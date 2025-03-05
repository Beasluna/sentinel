#!/bin/bash

# Configuración
BACKUP_DIR="${BACKUP_DIR:-/root/backups}"
TEMP_DIR="${TEMP_DIR:-/tmp/backup}"
LOG_FILE="${LOG_FILE:-/var/log/backup.log}"
EMAIL="${EMAIL:-sentinelmlbjp@gmail.com}"  # Cambia esto por tu correo real
PASSPHRASE="${PASSPHRASE:-passwd123123}"

# Configuración de Rsync para copia remota
REMOTE_USER="${REMOTE_USER:-rapy}"
REMOTE_HOST="${REMOTE_HOST:-2.tcp.eu.ngrok.io}"
REMOTE_PORT="${REMOTE_PORT:-19877}"
REMOTE_DIR="${REMOTE_DIR:-/home/rapy/backup_test}"

# Función para registrar logs y enviar correo
log_and_mail() {
    local message="$1"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" | tee -a "$LOG_FILE"
    echo "$message" | msmtp "$EMAIL"
}

# Verificar dependencias
check_dependencies() {
    local dependencies=("rsync" "tar" "msmtp" "gpg")  # GPG es obligatorio ahora
    for dep in "${dependencies[@]}"; do
        if ! command -v "$dep" &> /dev/null; then
            log_and_mail "❌ ERROR: $dep no está instalado. Instálalo primero."
            exit 1
        fi
    done
}

# Verificar espacio en disco antes del backup
check_disk_space() {
    local required_space="${1:-1048576}"  # 1GB mínimo por defecto
    local available_space=$(df -k / | awk 'NR==2 {print $4}')
    if [ "$available_space" -lt "$required_space" ]; then
        log_and_mail "❌ ERROR: Espacio en disco insuficiente."
        exit 1
    fi
}

# Validar argumentos
validate_arguments() {
    if [ "$#" -ne 1 ] || { [ "$1" != "tot" ] && [ "$1" != "int" ]; }; then
        echo "Uso: $0 {tot|int}"
        exit 1
    fi
}

# Definir directorios a respaldar
DIRS=("/etc" "/opt" "/var/www")

# Crear carpetas necesarias
create_directories() {
    mkdir -p "$BACKUP_DIR"
    mkdir -p "$TEMP_DIR"
}

# Función para copia, compresión y cifrado
perform_backup() {
    local backup_type="$1"
    log_and_mail "=== Realizando respaldo $backup_type ==="

    for DIR in "${DIRS[@]}"; do
        if [ -d "$DIR" ]; then
            log_and_mail "Copiando $DIR..."
            rsync -a --delete "$DIR" "$TEMP_DIR" || { log_and_mail "Error al copiar $DIR"; exit 1; }
        else
            log_and_mail "⚠️ Advertencia: El directorio $DIR no existe."
        fi
    done

    local timestamp=$(date +%Y%m%d-%H%M%S)
    local tar_file="$BACKUP_DIR/backup-$timestamp.tar.gz"
    
    log_and_mail "Comprimiendo datos..."
    tar -czf "$tar_file" -C "$TEMP_DIR" . || { log_and_mail "Error al comprimir archivos"; exit 1; }

    # Cifrar con GPG (obligatorio)
    local gpg_file="$tar_file.gpg"
    log_and_mail "Cifrando backup..."
    if ! gpg-agent --daemon &>/dev/null; then
        log_and_mail "⚠️ Advertencia: gpg-agent no está corriendo, intentado iniciarlo..."
    fi
    echo "$PASSPHRASE" | gpg --batch --yes --passphrase-fd 0 --symmetric --cipher-algo AES256 -o "$gpg_file" "$tar_file" || {
        log_and_mail "❌ ERROR: No se pudo cifrar el backup. El proceso se detiene.";
        rm -f "$tar_file"  # Eliminar el archivo sin cifrar
        exit 1;
    }

    # Eliminar el archivo sin cifrar después de cifrarlo
    rm -f "$tar_file"
    log_and_mail "Backup cifrado completado exitosamente."

    # Enviar el backup cifrado al servidor remoto usando rsync
    log_and_mail "Enviando backup cifrado al servidor remoto..."
    rsync -avz -e "ssh -p $REMOTE_PORT" "$gpg_file" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR" || {
        log_and_mail "❌ ERROR: No se pudo enviar el backup al servidor remoto.";
        exit 1;
    }

    log_and_mail "✅ Backup cifrado enviado exitosamente al servidor remoto."
}

# Realizar respaldo completo o incremental
perform_incremental_backup() {
    local last_backup=$(ls -t "$BACKUP_DIR"/backup-*.tar.gz.gpg 2>/dev/null | head -n 1)  # Buscar backups cifrados
    if [ -z "$last_backup" ]; then
        log_and_mail "⚠️ Advertencia: No hay backup previo para respaldo incremental. Realizando respaldo completo."
        perform_backup "completo"
    else
        rsync -a --delete --link-dest="${last_backup%.gpg}" "${DIRS[@]}" "$TEMP_DIR" || {
            log_and_mail "Error al copiar en respaldo incremental";
            exit 1;
        }
        perform_backup "incremental"
    fi
}

# Main
main() {
    validate_arguments "$@"
    check_dependencies
    check_disk_space
    create_directories

    if [ "$1" == "tot" ]; then
        perform_backup "completo"
    elif [ "$1" == "int" ]; then
        perform_incremental_backup
    fi
}

main "$@"
