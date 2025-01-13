# Proyecto SENTINEL
![Sentinels](SENTINELS/ASSETS/Sentinels.gif)


SENTINEL (Secure Enterprise Network Transformation and Intelligent Layered Network) es una solución de ciberseguridad de vanguardia diseñada para proteger y monitorear infraestructuras de red empresariales.

![Estado del Proyecto](https://img.shields.io/badge/estado-en%20desarrollo-yellow) ![Versión](https://img.shields.io/badge/version-1.0.0-blue)

## 🚀 Descripción del Proyecto
SENTINEL es una solución de ciberseguridad de vanguardia diseñada para proteger y monitorear infraestructuras de red empresariales. Combina tecnologías avanzadas con prácticas de seguridad innovadoras para ofrecer una protección integral contra amenazas cibernéticas modernas.

## ✨ Características Principales
- 🛡️ Arquitectura de red segmentada con VLANs
- 🖥️ Virtualización avanzada con Proxmox VE
- 🔒 Seguridad perimetral robusta (firewall pfSense, IDS/IPS)
- 🔍 Monitorización en tiempo real con análisis de amenazas
- 🐳 Implementación de microservicios con Docker
- 🕵️ Capacidades de sandboxing y análisis de malware
- 🍯 Tecnología de honeypots para detección proactiva de amenazas
- 🔐 Gestión avanzada de bases de datos con MySQL
- 📊 Dashboards personalizados para visualización de seguridad

## 🛠️ Tecnologías y Herramientas
- Proxmox VE para virtualización
- pfSense como firewall principal
- Suricata/Snort para IDS/IPS
- Docker para contenerización
- MySQL para gestión de bases de datos
- Python y Bash para scripting y automatización
- Ansible para gestión de configuraciones


SENTINEL combina tecnologías de punta con prácticas de seguridad innovadoras para ofrecer una solución integral de protección de redes empresariales.
## 📋 Requisitos del Sistema

## 🚀 Instrucciones de Instalación

## 📘 Guía de Uso
### Implementación del Servicio FTP con Certificado SSL
Esta guía describe cómo configurar un servicio FTP seguro utilizando un certificado SSL. Esto asegurá que las transferencias de archivos sean cifradas, protegiendo así la información sensible durante el tránsito de estos archivos.
##### Paso 1: Instalación de vsftpd
1. Actualiza los repositorios, instalamos vsftpd y habilitamos para que se iniciese al arrancar el sistema:
    ```bash
    sudo apt update
    sudo apt install vsftpd
    sudo systemctl enable vsftpd
    ```
2. Verifica que el servicio esté corriendo:
    ```bash
    sudo systemctl status vsftpd
    ```
##### Paso 2: Generación del Certificado SSL
1. Genera el certificado SSL/TLS utilizando OpenSSL:
    ```bash
    sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem
    ```
Después, nos pide información extra que nosotros vamos rellenando.
##### Paso 3: Configuración de vsftpd

1. Abre el archivo de configuración de vsftpd:
    ```bash
    sudo nano /etc/vsftpd.conf
    ```
2. Nos aseguramos de que las siguientes líneas estén presentes y configuradas correctamente:

    ```plaintext
    listen=YES
    anonymous_enable=NO
    local_enable=YES
    write_enable=YES
    chroot_local_user=YES
    ssl_enable=YES
    allow_anon_ssl=NO
    force_local_data_ssl=YES
    force_local_logins_ssl=YES
    ssl_tlsv1=YES
    ssl_sslv2=NO
    ssl_sslv3=NO
    rsa_cert_file=/etc/ssl/private/vsftpd.pem
    rsa_private_key_file=/etc/ssl/private/vsftpd.pem
    ```
3. Guardamos y cerramos el archivo.

##### Paso 4: Ajuste del Firewall

1. Permite el tráfico FTP y FTP sobre SSL (FTPS):
    ```bash
    sudo ufw allow 20/tcp
    sudo ufw allow 21/tcp
    sudo ufw allow 990/tcp
    sudo ufw reload
    ```

##### Paso 5: Reinicio del Servicio vsftpd

1. Reiniciamos el servicio vsftpd para que los cambios sean aplicados:
    ```bash
    sudo systemctl restart vsftpd
    ```
## 🤝 Contribución

## 📄 Licencia

## 🙋 Soporte
Para soporte, por favor abrir un issue en el repositorio o contactar a nuestro equipo de soporte en support@sentinel-project.com.

## 🌟 Equipo
- Leonardo: Arquitecto de Red
- Joel: Especialista en Virtualización
- Beatriz: Experta en Seguridad Perimetral
- Marc: Analista de Amenazas

## 📊 Estado del Proyecto

## Estado del proyecto: En desarrollo activo Versión actual: 0.9.0-beta

Contribuciones y feedback son bienvenidos. Para más información, consulta nuestra documentación.
