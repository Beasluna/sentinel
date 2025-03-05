#!/bin/bash

# Configuración
BACKUP_DIR="${BACKUP_DIR:-/root/backups}"
RESTORE_DIR="${RESTORE_DIR:-/root/restored}"
LOG_FILE="${LOG_FILE:-/var/log/restore.log}"
EMAIL="${EMAIL:-sentinelmlbjp@gmail.com}"  # Cambia esto por tu correo real
PASSPHRASE="${PASSPHRASE:-passwd123123}"

# Configuración de Rsync para copia remota
REMOTE_USER="${REMOTE_USER:-rapy}"
REMOTE_HOST="${REMOTE_HOST:-2.tcp.eu.ngrok.io}"
REMOTE_PORT="${REMOTE_PORT:-19877}"
REMOTE_DIR="${REMOTE_DIR:-/home/rapy/Documents/backup_test/}"

# Función para registrar logs y enviar correo
log_and_mail() {
    local message="$1"
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" | tee -a "$LOG_FILE"
    echo "$message" | msmtp "$EMAIL"
}

# Verificar dependencias
check_dependencies() {
    local dependencies=("rsync" "tar" "msmtp" "gpg")  # GPG es obligatorio
    for dep in "${dependencies[@]}"; do
        if ! command -v "$dep" &> /dev/null; then
            log_and_mail "❌ ERROR: $dep no está instalado. Instálalo primero."
            exit 1
        fi
    done
}

# Validar argumentos
validate_arguments() {
    if [ "$#" -ne 1 ]; then
        echo "Uso: $0 <nombre_del_backup>"
        echo "Ejemplo: $0 backup-20231025-123456.tar.gz.gpg"
        exit 1
    fi
}

# Crear carpetas necesarias
create_directories() {
    mkdir -p "$BACKUP_DIR"
    mkdir -p "$RESTORE_DIR"
}

# Descargar el backup cifrado desde el servidor remoto
download_backup() {
    local backup_name="$1"
    local remote_path="$REMOTE_DIR/$backup_name"
    local local_path="$BACKUP_DIR/$backup_name"

    log_and_mail "Descargando backup cifrado desde el servidor remoto..."
    rsync -avz -e "ssh -p $REMOTE_PORT" "$REMOTE_USER@$REMOTE_HOST:$remote_path" "$local_path" || {
        log_and_mail "❌ ERROR: No se pudo descargar el backup desde el servidor remoto.";
        exit 1;
    }

    log_and_mail "✅ Backup cifrado descargado exitosamente."
}

# Descifrar el backup
decrypt_backup() {
    local backup_name="$1"
    local encrypted_file="$BACKUP_DIR/$backup_name"
    local decrypted_file="${encrypted_file%.gpg}"

    log_and_mail "Descifrando backup..."
    echo "$PASSPHRASE" | gpg --batch --yes --passphrase-fd 0 --decrypt -o "$decrypted_file" "$encrypted_file" || {
        log_and_mail "❌ ERROR: No se pudo descifrar el backup.";
        exit 1;
    }

    log_and_mail "✅ Backup descifrado exitosamente."
}

# Extraer el backup
extract_backup() {
    local backup_name="$1"
    local decrypted_file="$BACKUP_DIR/${backup_name%.gpg}"

    log_and_mail "Extrayendo backup..."
    tar -xzf "$decrypted_file" -C "$RESTORE_DIR" || {
        log_and_mail "❌ ERROR: No se pudo extraer el backup.";
        exit 1;
    }

    log_and_mail "✅ Backup extraído exitosamente en $RESTORE_DIR."
}

# Main
main() {
    validate_arguments "$@"
    check_dependencies
    create_directories

    local backup_name="$1"
    download_backup "$backup_name"
    decrypt_backup "$backup_name"
    extract_backup "$backup_name"

    log_and_mail "=== Restauración completada exitosamente ==="
}

main "$@"
