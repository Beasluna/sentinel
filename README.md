# Proyecto SENTINEL
![Sentinels](SENTINELS/ASSETS/Sentinels.gif)


**SENTINEL (Secure Enterprise Network Transformation and Intelligent Layered Network)** es una solución de ciberseguridad de vanguardia diseñada para proteger y monitorear infraestructuras de red empresariales.
Combina tecnologías avanzadas con prácticas de seguridad innovadoras para ofrecer una protección integral contra amenazas cibernéticas modernas.

![Estado del Proyecto](https://img.shields.io/badge/estado-en%20desarrollo-yellow) ![Versión](https://img.shields.io/badge/version-1.0.0-blue)

## 🚀 Introducción del Proyecto

En el contexto actual de crecientes ciberamenazas, **SENTINEL emerge como una solución de ciberseguridad integral a la vanguardia.** Está diseñada para proteger y monitorizar infraestructuras de redes, combinando tecnologías de avanzada y practicas innovadoras para ofrecer una defense sólida contra amenazadas modernas.

- Desde segmentación de red con VLANs hasta el uso de virtualización con Proxmox VE, configurando la seguridad perimetral con firewall (pFSense) y la monitorización en tiempo real con analisis de amenazas y prevensión de ellas, cada elemento de SENTINEL está pensado para hacer un trabajo en sintonia y proporcionar una defensa exhaustiva.
- SENTINEL incorpora la implementación de microservicios con Docker, capacidades de sandboxing y análisis de malware, y la utilización de honeypots para la detección proactiva de amenazas. Todo esto se complementa con una gestión avanzada de bases de datos con MySQL y dashboards personalizados para la visualización de la seguridad.

Esta documentación ofrece una visión general, incluyendo su arquitectura, componentes clave, las instrucciones de implementación y sus guias de usos. **Nuestro objetivo es ofrecer una solución que sea no solo eficaz, sino también flexible y adaptable a las necesidades específicas de cada organización**. Acompáñanos en este recorrido por el mundo de la ciberseguridad de vanguardia con SENTINEL.


<details>
  <summary>✨ Características Principales</summary>
  <ul>
    <li>🛡️ Arquitectura de red segmentada con VLANs</li>
    <li>🖥️ Virtualización avanzada con Proxmox VE</li>
    <li>🔒 Seguridad perimetral robusta (firewall pfSense, IDS/IPS)</li>
    <li>🔍 Monitorización en tiempo real con análisis de amenazas</li>
    <li>🐳 Implementación de microservicios con Docker</li>
    <li>🕵️ Capacidades de sandboxing y análisis de malware</li>
    <li>🍯 Tecnología de honeypots para detección proactiva de amenazas</li>
    <li>🔐 Gestión avanzada de bases de datos con MySQL</li>
    <li>📊 Dashboards personalizados para visualización de seguridad</li>
  </ul>

 <details>
  <summary>🛠️ Tecnologías y Herramientas</summary>
<ul>- Proxmox VE para virtualización</ul>
<ul>- pfSense como firewall principal</ul>
<ul>- Suricata/Snort para IDS/IPS</ul>
<ul>- Docker para contenerización</ul>
<ul>- MySQL para gestión de bases de datos</ul>
<ul>- Python y Bash para scripting y automatización</ul>
<ul>- Ansible para gestión de configuraciones</ul>
 </details>

<details>
  <summary>🏗️ Componentes Clave</summary>
  <ul>
    <li>Arquitectura de Red Segmentada
      <ul>
        <li>Diseño de topología con VLANs y zonas de seguridad</li>
        <li>Implementación de modelo de zonas y conductos</li>
      </ul>
    </li>
    <li>Virtualización y Servicios Core
      <ul>
        <li>Plataforma Proxmox VE</li>
        <li>Servidores virtuales para servicios esenciales</li>
      </ul>
    </li>
    <li>Seguridad Perimetral y de Red
      <ul>
        <li>Firewall pfSense</li>
        <li>IDS/IPS (Snort)</li>
        <li>Filtrado DNS con Pi-hole</li>
      </ul>
    </li>
    <li>Gestión y Seguridad de Datos
      <ul>
        <li>MySQL con configuraciones de seguridad avanzadas</li>
        <li>Sistema de copias de seguridad y RAID</li>
      </ul>
    </li>
    <li>Monitorización y Administración
      <ul>
        <li>Sistema de monitorización en tiempo real (Zabbix o Nagios)</li>
        <li>Administración remota con Webmin</li>
      </ul>
    </li>
    <li>Contenedores y Microservicios
      <ul>
        <li>Implementación de Docker</li>
      </ul>
    </li>
    <li>Técnicas Avanzadas de Seguridad
      <ul>
        <li>Port Knocking</li>
        <li>Gestión de secretos con SOPS y AGE</li>
        <li>VPN para acceso remoto seguro</li>
      </ul>
    </li>
    <li>Automatización y Scripting
      <ul>
        <li>Scripts en Bash y Python para mantenimiento y seguridad</li>
      </ul>
    </li>
    <li>Análisis de Malware y Sandboxing
      <ul>
        <li>Cuckoo Sandbox</li>
        <li>Laboratorio aislado para análisis manual</li>
      </ul>
    </li>
    <li>Honeypots y Deception Technology
      <ul>
        <li>T-Pot para simulación de servicios</li>
        <li>Señuelos y trampas en la red</li>
      </ul>
    </li>
    <li>Pruebas de Seguridad y Hardening
      <ul>
        <li>Pentesting</li>
        <li>Hardening de sistemas y servicios</li>
      </ul>
    </li>
  </ul>
</details>

<details>
  <summary>📋 Resumen de Recursos</summary>
  
  | Componente            | Almacenamiento | CPU | RAM     | IP               |
  |-----------------------|----------------|-----|---------|-------------------|
  | Máquina Host (x2)     | 510GB          | 4   | 8GB     | 100.77.20.132     |
  | VM Windows            | 50GB           | 2   | 4GB     | 192.168.1.10/24   |
  | VM Linux              | 50GB           | 2   | 4GB     | 192.168.1.20/24   |
  | VM Mac                | 50GB           | 2   | 4GB     | 192.168.1.30/24   |
  | Máquina Contenedores  | 50GB           | 2   | 4GB     | 192.168.1.40/24   |
  | pfSense (Firewall)    | 20GB           | 1   | 2GB     | 192.168.1.1/24    |
  | Suricata/Snort (IDS/IPS)| 20GB         | 1   | 2GB     | 192.168.1.50/24   |
  | MySQL (en Proxmox)    | 20GB           | 1   | 2GB     | 192.168.1.60/24   |
  | Raspberry Pi (MySQL)   | 20GB          | 1   | 2GB     | 192.168.1.70/24   |

</details>

<details>
  <summary>🛜  DIAGRAMA DE RED SENTINEL</summary>

  ![Diagrama de red](SENTINELS/ASSETS/Diagramasentinel.gif)

</details>


 ## 🚀 Instrucciones de Instalación</summary>
<details>
  <summary>🚀 HIPERVISOR: DEFINICIÓN Y TIPOS </summary>

Los hipervisores, o monitores de máquinas virtuales, son sistemas de software que crean y ejecutan máquinas virtuales. Estos hipervisores separan el sistema operativo y los recursos de las máquinas virtuales para crearlas y gestionarlas. El hardware físico que funciona como hipervisor se llama "host", mientras que las máquinas virtuales que utilizan estos recursos se llaman "huéspedes".

El hipervisor trata los recursos como un pool que se puede redistribuir fácilmente entre las máquinas virtuales existentes o las nuevas. Todos los hipervisores requieren algunos elementos del sistema operativo para ejecutar las máquinas virtuales, como el gestor de memoria, el programador de procesos, los controladores de dispositivos, etc.

El hipervisor asigna los recursos a cada máquina virtual y gestiona su programación en función de los recursos físicos disponibles. Con un hipervisor, es posible ejecutar varios sistemas operativos al mismo tiempo, compartiendo los mismos recursos de hardware virtualizados.

## Tipos de Hipervisores

| Característica | Hipervisor Tipo 1 (Bare-Metal) | Hipervisor Tipo 2 (Hosted) |
|----------------|--------------------------------|----------------------------|
| Ejecución | Directamente sobre el hardware físico | Sobre un sistema operativo anfitrión |
| Interacción | Directa con CPU, memoria y almacenamiento | A través del sistema operativo host |
| Eficiencia | Mayor eficiencia y rendimiento | Menor eficiencia debido a la capa adicional del SO |
| Uso común | Entornos empresariales y centros de datos | PCs individuales, desarrollo y pruebas |
| Seguridad | Mayor aislamiento y seguridad | Potencialmente más vulnerable si se compromete el SO host |
| Flexibilidad | Menor flexibilidad en términos de hardware soportado | Mayor flexibilidad para diferentes tipos de hardware |
| Ejemplos | VMware ESXi, Microsoft Hyper-V, Citrix Hypervisor, KVM, Nutanix AHV, Proxmox VE | VMware Workstation/Fusion, Oracle VirtualBox, QEMU |
| Ventajas | Mejor aprovechamiento de recursos, alta disponibilidad | Fácil instalación, ideal para múltiples SO en una sola máquina |
| Desventajas | Requiere hardware dedicado, mayor complejidad de configuración | Posible latencia, menor rendimiento general |
| Ideal para | Infraestructuras que requieren alto rendimiento y disponibilidad | Usuarios que necesitan múltiples entornos operativos en una sola máquina |

## Funcionalidad

Un hipervisor permite que varias instancias de sistema operativo trabajen juntas y compartan los mismos recursos físicos de la computadora. Esto se conoce como virtualización, y estas instancias se llaman máquinas virtuales. El hipervisor administra estas máquinas virtuales mientras se ejecutan simultáneamente, separándolas lógicamente y asignando recursos de manera individual. Esto evita que una máquina virtual afecte a las demás, asegurando que si una de ellas se bloquea o tiene problemas, las demás sigan funcionando correctamente.
</details>

<details>
  <summary>📘 Guía de Uso</summary>
  <ul>
    <details>
      <summary>📘 Proxmox</summary>
      <ul>
        <li><strong>Proxmox Virtual Environment (Proxmox VE)</strong>
          <ul>
            <li>Proxmox VE es una plataforma de virtualización basada en Debian GNU/Linux que permite gestionar máquinas virtuales (VMs), contenedores y almacenamiento definido por software.</li>
            <li>Utiliza tecnologías como <strong>KVM</strong> para virtualización de hardware y <strong>LXC</strong> para virtualización a nivel de sistema operativo.</li>
          </ul>
        </li>
        <li><strong>Tecnologías de Virtualización: QEMU y KVM</strong>
          <ul>
            <li><strong>QEMU (Quick Emulator):</strong> Emulador de hardware y máquina virtual que puede operar con diferentes arquitecturas (x86, ARM, MIPS) y admite migración en vivo de VMs.</li>
            <li><strong>KVM (Kernel-based Virtual Machine):</strong> Hipervisor de tipo 1 basado en el kernel de Linux que permite ejecutar máquinas virtuales de alto rendimiento aprovechando las tecnologías de virtualización por hardware (Intel VT-x, AMD-V).</li>
          </ul>
        </li>
        <li><strong>Características clave de Proxmox VE:</strong>
          <ul>
            <li>Optimización de recursos y costos mediante virtualización eficiente.</li>
            <li>Interfaz web intuitiva para gestión centralizada de VMs, contenedores y almacenamiento.</li>
            <li>Soporte para diferentes tipos de almacenamiento (local, NFS, CIFS, iSCSI).</li>
            <li>Posibilidad de crear clústeres para redundancia y alta disponibilidad.</li>
            <li>Herramientas integradas para copias de seguridad, restauración y migración en vivo.</li>
            <li>Gestión avanzada de usuarios y permisos de acceso.</li>
            <li>Actualizaciones regulares con parches de seguridad y nuevas funciones.</li>
          </ul>
        </li>
        <li><strong>CEPH: Almacenamiento Distribuido</strong>
          <ul>
            <li><strong>¿Qué es CEPH?</strong> Un sistema de almacenamiento distribuido, escalable y confiable que combina almacenamiento de objetos, bloques y archivos.</li>
            <li><strong>Componentes principales de CEPH:</strong>
              <ul>
                <li><strong>Monitores:</strong> Controlan el estado del clúster.</li>
                <li><strong>Dispositivos de almacenamiento de objetos:</strong> Guardan los datos distribuidos.</li>
                <li><strong>Gestores:</strong> Gestionan las métricas y las interfaces del sistema.</li>
                <li><strong>Servidores de metadatos:</strong> Manejan el sistema de archivos CephFS.</li>
              </ul>
            </li>
            <li><strong>Ventajas de CEPH:</strong>
              <ul>
                <li>Alta disponibilidad gracias a la replicación y codificación de borrado.</li>
                <li>Escalabilidad masiva sin puntos de fallo únicos.</li>
                <li>Soporta múltiples tipos de almacenamiento (objetos, bloques y archivos).</li>
              </ul>
            </li>
          </ul>
        </li>
        <li><strong>Roles de Usuarios y Grupos en Proxmox:</strong>
          <table>
            <thead>
              <tr>
                <th>Rol</th>
                <th>Descripción</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><strong>Administrator</strong></td>
                <td>Total control sobre el sistema.</td>
              </tr>
              <tr>
                <td><strong>NoAccess</strong></td>
                <td>Sin privilegios para acceder.</td>
              </tr>
              <tr>
                <td><strong>PVEAdmin</strong></td>
                <td>Permite realizar muchas tareas, pero no puede cambiar la configuración del sistema.</td>
              </tr>
              <tr>
                <td><strong>PVEAuditor</strong></td>
                <td>Solo puede leer la información, no modificarla.</td>
              </tr>
              <tr>
                <td><strong>PVEDatastoreAdmin</strong></td>
                <td>Permite crear y gestionar espacio de backup y plantillas.</td>
              </tr>
              <tr>
                <td><strong>PVEDatastore</strong></td>
                <td>Permite asignar espacio de backup y visualizar el almacenamiento disponible.</td>
              </tr>
              <tr>
                <td><strong>PVEPoolAdmin</strong></td>
                <td>Administra pools de recursos.</td>
              </tr>
              <tr>
                <td><strong>PVEPoolUser</strong></td>
                <td>Acceso solo para visualizar pools.</td>
              </tr>
              <tr>
                <td><strong>PVESysAdmin</strong></td>
                <td>Acceso a auditoría, consola del sistema y registros.</td>
              </tr>
              <tr>
                <td><strong>PVEVMAdmin</strong></td>
                <td>Permite administrar todas las máquinas virtuales.</td>
              </tr>
              <tr>
                <td><strong>PVEVM</strong></td>
                <td>Permite ver, realizar copias de seguridad, configurar CD-ROM, acceder a la consola de máquinas virtuales y gestionar la energía de las VMs.</td>
              </tr>
            </tbody>
          </table>
          <ul>
            <li>Proxmox permite la creación de roles personalizados con privilegios adaptados a necesidades específicas.</li>
            <li>Los grupos de usuarios pueden ser creados para asignar permisos de forma más eficiente.</li>
          </ul>
        </li>
        <li><strong>Almacenamiento de ISOs y Plantillas en Proxmox:</strong>
          <ul>
            <li><strong>Imágenes ISO:</strong> Por defecto se almacenan en: <code>/var/lib/vz/template/iso</code></li>
            <li><strong>Plantillas de contenedores:</strong> Se almacenan por defecto en: <code>/var/lib/vz/template/cache</code></li>
            <li><strong>Imágenes de discos y plantillas de VMs:</strong> Usualmente se almacenan en: <code>/var/lib/vz/images/</code></li>
          </ul>
          <p>Proxmox permite configurar y crear repositorios dedicados para ISOs y plantillas. Para hacerlo, sigue estos pasos:</p>
          <ol>
            <li>En la interfaz web de Proxmox, selecciona el objeto "Datacenter" en la barra lateral.</li>
            <li>Abre la pestaña "Storage".</li>
            <li>Haz clic en "Add" y selecciona "Directory".</li>
            <li>Especifica un ID para el almacenamiento y la ruta donde deseas guardar los archivos.</li>
            <li>Selecciona los tipos de contenido a almacenar (ISO Images, Container Templates, etc.).</li>
          </ol>
        </li>
        <li><strong>Licencia de Proxmox:</strong>
          <ul>
            <li>Proxmox VE se distribuye bajo la licencia <strong>GNU AGPLv3</strong>, lo que permite su uso gratuito y la inspección de su código fuente.</li>
          </ul>
        </li>
      </ul>
    </details>
    <details>
  <summary>📚 Docker y Docker Compose</summary>
  <ul>
    <li><strong>Docker</strong>
      <ul>
        <li>Docker es una plataforma de código abierto que automatiza el despliegue de aplicaciones dentro de contenedores de software.</li>
        <li>Permite a los desarrolladores empaquetar aplicaciones con todas sus dependencias en contenedores ligeros, portátiles y consistentes.</li>
      </ul>
    </li>
    <li><strong>Componentes Clave</strong>
      <ul>
        <li><strong>Motor Docker</strong>: Aplicación cliente-servidor que incluye:
          <ul>
            <li><strong>Daemon (dockerd)</strong>: Proceso que gestiona contenedores, imágenes y redes.</li>
            <li><strong>API de Docker</strong>: Interfaz RESTful que permite la comunicación entre el cliente Docker y el daemon.</li>
            <li><strong>Cliente CLI (docker)</strong>: Herramienta de línea de comandos para interactuar con Docker.</li>
          </ul>
        </li>
        <li><strong>Imágenes</strong>: Plantillas de solo lectura que se utilizan para crear contenedores.</li>
        <li><strong>Contenedores</strong>: Instancias ejecutables de imágenes que ejecutan aplicaciones y sus dependencias.</li>
        <li><strong>Registros</strong>: Repositorios para almacenar y distribuir imágenes (ej. Docker Hub, Google Container Registry).</li>
      </ul>
    </li>
    <li><strong>Docker Compose</strong>
      <ul>
        <li>Docker Compose es una herramienta para definir y ejecutar aplicaciones Docker multi-contenedor.</li>
        <li>Utiliza un archivo YAML llamado <code>docker-compose.yml</code> para definir servicios.</li>
        <li>Se usa <code>docker compose up</code> para iniciar los contenedores.</li>
        <ul>
          <li><strong>Estructura básica del archivo docker-compose.yml:</strong>
            <pre><code>
version: "3.8"
services:
  web:
    image: nginx
    ports:
      - "80:80"
    volumes:
      - ./web:/usr/share/nginx/html
  db:
    image: mysql:8.0
    environment:
      MYSQL_ROOT_PASSWORD: example_password
            </code></pre>
          </li>
          <li><strong>Comandos principales:</strong>
            <ul>
              <li><code>docker compose up -d</code>: Inicia los servicios definidos en el archivo docker-compose.yml.</li>
              <li><code>docker compose down</code>: Detiene los servicios y elimina los contenedores creados.</li>
              <li><code>docker compose logs</code>: Muestra los logs de los servicios en ejecución.</li>
            </ul>
          </li>
        </ul>
      </ul>
    </li>
  </ul>

 ## Instalación de Docker y Docker Compose
  1. **Instalar Docker y Docker Compose**:
     ```bash
     apk add docker
     apk add docker-compose
     ```
  2. **Iniciar el servicio Docker**:
     ```bash
     service docker start
     ```
  3. **Verificar la instalación**:
     ```bash
     docker --version
     docker-compose --version
     ```
  ## Descarga de Imágenes Docker
  1. **Descargar imágenes necesarias**:
     - Para descargar la imagen de Nginx:
       ```bash
       docker pull nginx
       ```
     - Para descargar la imagen de Portainer:
       ```bash
       docker pull portainer/portainer-ce
       ```
  ## Ejecución de Contenedores
  1. **Ejecutar un contenedor Nginx**:
     ```bash
     docker run --nombre -de- mi-nginx -d -p 80:80 nginx
     ```
  2. **Ejecutar un contenedor Portainer**:
     ```bash
     docker run -d -p 9000:9000 --nombre-de-mi-portainer portainer/portainer-ce
     ```
  3. **Listar contenedores activos e imágenes descargadas**:
     ```bash
     docker ps -a
     docker images
     ```
  ## Uso de Docker Compose
  1. **Crear un archivo `docker-compose.yml`**:
     Este archivo define los servicios que deseas desplegar. Un ejemplo básico podría ser:
     ```yaml
     version: "3.8"
     services:
       app:
         image: php:8-fpm
         volumes:
           - ./app:/var/www/html
       db:
         image: mysql:8.0
         environment:
           MYSQL_ROOT_PASSWORD: example_password
       web:
         image: nginx
         ports:
           - "80:80"
         volumes:
           - ./nginx.conf:/etc/nginx/nginx.conf
     ```
  2. **Ejecutar los servicios definidos en `docker-compose.yml`**:
     ```bash
     docker compose up -d
     ```
  3. **Detener los servicios**:
     ```bash
     docker compose down
     ```
  4. **Ver logs de los servicios**:
     ```bash
     docker compose logs
     ```
  ## Gestión con Portainer
  1. **Acceder a Portainer**:
     - Una vez que el contenedor de Portainer esté en ejecución, accede a través del navegador en `http://localhost:9000`.
  2. **Crear un stack desde Portainer**:
     - Ve a la sección "Stacks" y selecciona "Add Stack".
     - Copia el contenido del archivo `docker-compose.yml` en el editor web.
     - Haz clic en "Deploy the Stack".
  ## Verificación del Despliegue
  1. **Verificar contenedores activos**:
     ```bash
     docker ps -a
     ```
  2. **Acceso a la aplicación web**:
     - Accede a tu aplicación web en `http://localhost`.
  3. **Acceso a phpMyAdmin (si está configurado)**:
     - Accede a phpMyAdmin en `http://localhost:8080`.
  4. **Estado del entorno desplegado (ejemplo)**:
     - Contenedores activos dentro del stack (ejemplo):
       - `miAppMySQL` (MySQL 8.0) → Escuchando en el puerto `3306:3306`.
       - `miAppNginx` (Servidor web Nginx) → Escuchando en `80:80`.
       - `miAppPHP` (PHP-FPM) → Sin puerto expuesto directamente.
       - `miAppPhpMyAdmin` (phpMyAdmin) → Accesible en `8080:80`.
 </details>
 <details>
  <summary>📘 Clúster Proxmox</summary>
      <h2>Clúster de Proxmox con 2 Nodos</h2>

  <p>Un <strong>Clúster de Proxmox</strong> es un conjunto de servidores (nodos) que trabajan de manera coordinada, gestionados desde una única interfaz. La principal ventaja de un clúster es que permite compartir recursos, como máquinas virtuales y almacenamiento, entre los nodos.</p>

  <p>En SENTINEL, hemos implementado la configuración de un clúster de dos nodos en <strong>Proxmox VE</strong>. El Cluster nos permite: la gestión centralizada de varios nodos, facilitando tareas como la migración de máquinas virtuales (VM), alta disponibilidad y administración de recursos.</p>

  <h4>Funcionalidades Clave:</h4>
  <ul>
    <li><strong>Migración de VMs</strong>: Las máquinas virtuales pueden ser movidas entre los nodos del clúster sin interrumpir su funcionamiento.</li>
    <li><strong>Alta Disponibilidad</strong>: Las máquinas virtuales pueden reiniciarse en otros nodos en caso de que uno de los nodos falle.</li>
    <li><strong>Gestión Centralizada</strong>: Los nodos pueden ser gestionados desde una sola interfaz web o por línea de comandos.</li>
    <li><strong>Escalabilidad</strong>: Es posible añadir más nodos al clúster conforme se necesiten más recursos.</li>
  </ul>

  <h4>Palabras claves de un Clúster Proxmox</h4>
  <ul>
    <li><strong>Nodos</strong>: Los servidores físicos o virtuales que forman parte del clúster. Cada nodo ejecuta una instancia de <strong>Proxmox VE</strong> (Virtual Environment) y puede contener máquinas virtuales o contenedores.</li>
    <li><strong>Corosync</strong>: Un sistema de comunicación entre nodos que garantiza que todos los nodos tengan la misma información y estado. <strong>Corosync</strong> es el encargado de la sincronización y comunicación en tiempo real, asegurando que los nodos estén siempre actualizados y evitando inconsistencias, como un estado de "split-brain" donde ambos nodos creen que son el principal.</li>
    <li><strong>Quorum</strong>: El quorum es el número mínimo de nodos que deben estar activos para que el clúster funcione correctamente. En un clúster de dos nodos, el quorum es crítico, ya que si un nodo se apaga, el clúster podría quedar sin consenso. Esto se soluciona añadiendo un <strong>nodo de votación</strong> (un tercer nodo virtual), que actúa como árbitro y garantiza que el clúster siempre tenga un consenso válido.</li>
    <li><strong>Cluster Manager (pvecm)</strong>: Herramienta utilizada para crear, gestionar y mantener la configuración del clúster desde la línea de comandos.</li>
  </ul>

  <h4>Beneficios de un Clúster de Dos Nodos:</h4>
  <ul>
    <li><strong>Alta Disponibilidad (HA)</strong>: Si un nodo falla, las máquinas virtuales pueden ser automáticamente reiniciadas en el otro nodo.</li>
    <li><strong>Migración en vivo</strong>: Las VMs pueden ser migradas de un nodo a otro sin causar tiempo de inactividad.</li>
    <li><strong>Redundancia de recursos</strong>: Los recursos (almacenamiento, CPU, memoria) están distribuidos entre los nodos, aumentando la tolerancia a fallos. Además, la distribución de recursos permite un balanceo de carga entre los nodos.</li>
  </ul>

  <h4>Redundancia de Almacenamiento</h4>
  <p>Para que las máquinas virtuales puedan ser movidas entre los nodos sin interrumpir el servicio, es crucial contar con un <strong>almacenamiento compartido</strong> (NFS, Ceph o iSCSI). Este almacenamiento es accesible desde ambos nodos y asegura que las VMs tengan acceso a los mismos discos, independientemente del nodo en el que se encuentren.</p>

  <h4>Monitoreo y Mantenimiento del Clúster</h4>
  <p>Es importante mantener el clúster funcionando de manera eficiente. Algunas herramientas útiles para monitorear el estado del clúster incluyen:</p>
  <ul>
    <li><code>pvecm status</code>: Muestra el estado general del clúster.</li>
    <li><code>pvecm nodes</code>: Verifica los nodos conectados.</li>
    <li><code>pvesh get /cluster/config/nodes</code>: Proporciona una vista detallada de la configuración de los nodos.</li>
  </ul>

  <h4>Consideraciones de Seguridad</h4>
  <p>Para proteger el clúster, se deben seguir buenas prácticas de seguridad, tales como:</p>
  <ul>
    <li>Configurar <strong>SSH seguro</strong> con claves robustas para la autenticación entre nodos.</li>
    <li>Utilizar <strong>firewalls</strong> para restringir el acceso a puertos específicos del clúster.</li>
    <li>Asegurar que la comunicación entre nodos sea privada, especialmente si el clúster se distribuye a través de redes públicas. Se recomienda el uso de <strong>VPNs</strong> o redes privadas para la comunicación entre los nodos.</li>
  </ul>

  <h3>Requisitos Previos</h3>
  <ul>
    <li><strong>Proxmox VE</strong> instalado en ambos nodos.</li>
    <li><strong>Acceso SSH</strong> entre los nodos.</li>
    <li><strong>Red de comunicación estable</strong> entre los nodos.</li>
    <li><strong>Almacenamiento compartido (opcional)</strong>: Para alta disponibilidad y migración de VMs sin interrupciones, se recomienda tener un almacenamiento compartido accesible desde ambos nodos (NFS, Ceph, iSCSI).</li>
  </ul>
      <ul>
        <li>Implementación de un Clúster en Proxmox
          <ul>
            <li>Esta guía detalla cómo unir dos nodos Proxmox para formar un clúster, permitiendo la administración centralizada y la migración en vivo de máquinas virtuales.</li>
          </ul>
        </li>
        <li>Paso 1: Configuración de Red
          <ul>
            <li>Verificamos que ambos nodos tengan nombres de host y direcciones IP estáticas:</li>
            <pre><code>hostnamectl set-hostname proxmox-node1
echo "192.168.1.101 proxmox-node1" | sudo tee -a /etc/hosts
echo "192.168.1.102 proxmox-node2" | sudo tee -a /etc/hosts</code></pre>
          </ul>
        </li>
        <li>Paso 2: Creación del Clúster en el Primer Nodo
          <ul>
            <li>En el nodo principal, ejecutamos:</li>
            <pre><code>pvecm create my-cluster</code></pre>
            <li>Verificamos que el clúster se haya creado correctamente:</li>
            <pre><code>pvecm status</code></pre>
          </ul>
        </li>
        <li>Paso 3: Unir el Segundo Nodo al Clúster
          <ul>
            <li>En el nodo que queremos agregar, ejecutamos:</li>
            <pre><code>pvecm add 192.168.1.101</code></pre>
            <li>Verificamos que ambos nodos estén en el clúster:</li>
            <pre><code>pvecm nodes</code></pre>
          </ul>
        </li>
        <li>Paso 4: Configuración Adicional
          <ul>
            <li>Habilitamos la migración sin contraseña entre nodos:</li>
            <pre><code>ssh-copy-id root@proxmox-node2</code></pre>
            <li>Probamos la migración en vivo:</li>
            <pre><code>qm migrate 100 proxmox-node2 --online</code></pre>
          </ul>
        </li>
        <li>Paso 5: Verificación del Clúster
          <ul>
            <li>Verificamos el estado general del clúster:</li>
            <pre><code>pvecm status
pvecm nodes
pvesh get /cluster/config/nodes</code></pre>
          </ul>
        </li>
      </ul>
    </details>
    <details>
      <summary>📘 Implementación del Servicio FTP con Certificado SSL</summary>
      <ul>
        <li>Implementación del Servicio FTP con Certificado SSL
          <ul>
            <li>Esta guía describe cómo configurar un servicio FTP seguro utilizando un certificado SSL. Esto asegurará que las transferencias de archivos sean cifradas, protegiendo así la información sensible durante el tránsito de estos archivos.</li>
          </ul>
        </li>
        <li>Paso 1: Instalación de vsftpd
          <ul>
            <li>Actualizamos los repositorios, instalamos vsftpd y habilitamos para que se inicie al arrancar el sistema:
              <pre><code>sudo apt update
sudo apt install vsftpd
sudo systemctl enable vsftpd</code></pre>
            </li>
            <li>Verificamos que el servicio esté corriendo:
              <pre><code>sudo systemctl status vsftpd</code></pre>
            </li>
          </ul>
        </li>
        <li>Paso 2: Generación del Certificado SSL
          <ul>
            <li>Generamos el certificado SSL/TLS utilizando OpenSSL:
              <pre><code>sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem</code></pre>
            </li>
            <li>Después, nos pide información adicional que debemos rellenar.</li>
          </ul>
        </li>
        <li>Paso 3: Configuración de vsftpd
          <ul>
            <li>Abrimos el archivo de configuración de vsftpd:
              <pre><code>sudo nano /etc/vsftpd.conf</code></pre>
            </li>
            <li>Aseguramos que las siguientes líneas estén presentes y configuradas correctamente, incluyendo los directorios de los certificados anteriores:
              <pre><code>listen=YES
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
rsa_private_key_file=/etc/ssl/private/vsftpd.pem</code></pre>
            </li>
            <li>Guardamos y cerramos el archivo.</li>
          </ul>
        </li>
        <li>Paso 4: Ajuste del Firewall
          <ul>
            <li>Permitimos el tráfico FTP y FTP sobre SSL (FTPS):
              <pre><code>sudo ufw allow 20/tcp
sudo ufw allow 21/tcp
sudo ufw allow 990/tcp
sudo ufw reload</code></pre>
            </li>
          </ul>
        </li>
        <li>Paso 5: Reinicio del Servicio vsftpd
          <ul>
            <li>Reiniciamos el servicio vsftpd para que los cambios sean aplicados:
              <pre><code>sudo systemctl restart vsftpd</code></pre>
            </li>
          </ul>
        </li>
      </ul>
    </details>
    <details>
  <summary>🌐 Exposición de Servicios Locales a Internet con Ngrok</summary>
  <ul>
    <li><strong>Introducción a Ngrok</strong>
      <ul>
        <li>En este documento, encontraran una guía detallada sobre la instalación y configuración de Ngrok, una herramienta esencial para quienes necesitan acceder de forma remota a sus dispositivos o exponer servicios locales a Internet de manera segura. Aprenderan paso a paso cómo instalar Ngrok, autenticaran con su cuenta, crear túneles para conexiones SSH, HTTP y otros protocolos, así como optimizar su uso para mejorar la productividad al trabajar desde casa.</li>
      </ul>
    </li>
    <li><strong>¿Qué es Ngrok?</strong>
      <ul>
        <li>Ngrok es una herramienta que permite exponer servidores locales a Internet mediante túneles seguros. Esto es útil para desarrolladores, administradores de sistemas y cualquier persona que necesite acceder a su equipo de forma remota sin configurar reglas de firewall o abrir puertos en el router.</li>
      </ul>
    </li>
    <li><strong>Seguridad en Ngrok</strong>
      <ul>
        <li>La seguridad es una de las principales características de Ngrok. Para garantizar conexiones seguras y evitar accesos no autorizados, Ngrok implementa las siguientes medidas:</li>
        <li>Cifrado TLS/SSL: Todo el tráfico que pasa por los túneles de Ngrok está protegido mediante cifrado TLS 1.2+.</li>
        <li>Autenticación de usuarios: Ngrok requiere autenticación mediante tokens para generar túneles.</li>
        <li>Protección con contraseña: Al exponer servicios HTTP, Ngrok permite configurar autenticación con usuario y contraseña.</li>
        <li>Restricción de accesos: Podéis definir reglas de control de acceso.</li>
        <li>Registros y monitoreo: Ngrok proporciona herramientas para analizar las solicitudes entrantes.</li>
      </ul>
    </li>
    <li><strong>Instalación</strong>
      <ul>
        <li>Ngrok está disponible para múltiples sistemas operativos y su instalación es sencilla. A continuación, les explicamos cómo instalarlo en Linux:</li>
        <li>Lo primero que necesitan es crearse una cuenta en Ngrok.  <br>
        <img src="https://github.com/Beasluna/sentinel/blob/314148000deb83e555cf3d5eed4e59186c57a2be/SENTINELS/ASSETS/ngrok/Creacioncuentangrok.png" alt="Creación de cuenta en Ngrok">
        </li>
        <li>Una vez creada la cuenta, en la página de bienvenida se ofrecen opciones para instalarlo según el sistema operativo. En este caso, vamos a instalar Ngrok en un servidor Linux para crear futuros túneles.<br>
        <img src="https://github.com/Beasluna/sentinel/blob/56d5f384da14b1f320f6af2516fbabe481f5f713/SENTINELS/ASSETS/ngrok/homepagengrok.png" alt="Página de bienvenida Ngrok">
        </li>
        <li>En este caso vamos a instalar ngrok en mi servidor para poder crear futuros túneles:
          <img src="https://github.com/Beasluna/sentinel/blob/fed838a67b5ee3bcb102c7eded0a0d7f42ef9cf5/SENTINELS/ASSETS/ngrok/instalacionserver.png" alt="Instalación servidor Ngrok">
        </li>
        <li>Instalamos Ngrok tal y como lo indica la página oficial:<br>
        <img src="https://github.com/Beasluna/sentinel/blob/620fe37dcdca95ad72bf4319ff1db03df8408e61/SENTINELS/ASSETS/ngrok/instalacionngrokcomandos.png" alt="Instalación Ngrok Comandos">
        </li>
        <li>Comprobamos la instalación ejecutando:“ngrok” o “ngrok --version”
          <pre><code>ngrok --version</code></pre>
          <img src="https://github.com/Beasluna/sentinel/blob/1f48c9ef14794ba402c6715583f3d684dcb8d642/SENTINELS/ASSETS/ngrok/comprobacioninstalacion.png" alt="Comprobación Instalación Ngrok">
        </li>
      </ul>
    </li>
   <li><strong>Autenticación</strong>
      <ul>
        <li>Ngrok requiere autenticación para funcionar correctamente. Para autenticaros, utilizamos el token llamado "Authtoken" que Ngrok proporciona.</li>
        <li>
          <img src="https://github.com/Beasluna/sentinel/blob/eb18ceafad287b47b274cdac6d395ddbd5ccd821/SENTINELS/ASSETS/ngrok/authtoken.png" alt="Autenticación con Ngrok">
        </li>
        <li>Una vez que tengáis el token copiado, ejecutad el siguiente comando en la terminal:
      <pre><code>ngrok config add-authtoken TOKEN_AQUI</code></pre>
    </li>
    <li>Esto guardará vuestro token y permitirá el uso de Ngrok sin problemas.</li>
    <li>
      Aquí tenéis un ejemplo de cómo se ve este proceso:
      <br>
      <img src="https://github.com/Beasluna/sentinel/blob/a218bcea9f935f71ae66d90cf6d61770a4d6ff6d/SENTINELS/ASSETS/ngrok/Creacionauthtokenysaved.png" alt="Creación y guardado de Authtoken">
    </li>
        <li><strong>Creación de Túneles</strong>
  <ul>
    <li>Primero, comprobamos si el servicio SSH está corriendo en el servidor.</li>
    <li>Aquí tienen una imágen de referencia:</li>
    <br>
    <img src="https://github.com/Beasluna/sentinel/blob/3ea8bc62137c446dc241e8e620005069068d1416/SENTINELS/ASSETS/ngrok/servicesshdstatus.png" alt="Servicio SSH Status">
    <li>Para crear el túnel, es tan sencillo como poner ngrok seguido del tipo de protocolo y el puerto al que se quiera apuntar:
      <pre><code>ngrok tcp 22</code></pre>
      <br>
      <img src="https://github.com/Beasluna/sentinel/blob/3ea8bc62137c446dc241e8e620005069068d1416/SENTINELS/ASSETS/ngrok/creaciondeltunelprotocoloypuerto.png" alt="Creación del túnel: protocolo y puerto">
    </li>
    <li>Ngrok va a asignar una dirección del tipo:
      <pre><code>tcp://5.tcp.eu.ngrok.io:11836</code></pre>
      Donde `11836` es el puerto externo aleatorio asignado por Ngrok apuntando al puerto local `22`.
    </li>
    <li>Ngrok va a asignar una dirección del tipo:
      <pre><code>tcp://5.tcp.eu.ngrok.io:11836</code></pre>
      Donde `11836` es el puerto externo aleatorio asignado por Ngrok apuntando al puerto local `22`.
      <br>
      <img src="https://github.com/Beasluna/sentinel/blob/3ea8bc62137c446dc241e8e620005069068d1416/SENTINELS/ASSETS/ngrok/asignaciondedireccionypuertoexterno.png" alt="Asignación de dirección y puerto externo">
    </li>
  </ul>
</li>
<li><strong>Acceso al Túnel desde Otra Máquina</strong>
  <ul>
    <li>Una vez creado el túnel, es importante probarlo desde otra máquina que tenga acceso a Internet. En este ejemplo, usaremos una máquina con Alpine Linux.</li>
    <li>Aquí tenéis un ejemplo de cómo se realiza la comprobación del túnel desde una máquina Alpine Linux:
      <br>
      <img src="https://github.com/Beasluna/sentinel/blob/3ea8bc62137c446dc241e8e620005069068d1416/SENTINELS/ASSETS/ngrok/comprobaciontuneldesdemvalpine.png" alt="Comprobación del túnel desde Alpine Linux">
    <li>
      <pre><code>ssh -p PUERTO_EXTERNO usuario@DIRECCION_NGROK</code></pre>
    </li>
    <li>Aquí teneis un ejemplo de como se realiza la conexión SSH al túnel desde una maquina Alpine Linux:
     <br>
     <img src="https://github.com/Beasluna/sentinel/blob/3ea8bc62137c446dc241e8e620005069068d1416/SENTINELS/ASSETS/ngrok/comprobaciontuneldesdemvalpine2.png" alt="Conexión SSH al túnel desde Alpine Linux">
    </li>
    <li>Aquí tenéis un ejemplo de una conexión SSH exitosa al túnel desde una máquina Alpine Linux:
     <br>
     <img src="https://github.com/Beasluna/sentinel/blob/3ea8bc62137c446dc241e8e620005069068d1416/SENTINELS/ASSETS/ngrok/comprobaciontuneldesdemvalpine3.png" alt="Conexión SSH exitosa al túnel desde Alpine Linux">
    </li>
    <li>Además de acceder a través de SSH, también pueden verificar el estado del túnel en la webapp de Ngrok:
     <br>
     <img src="https://github.com/Beasluna/sentinel/blob/3ea8bc62137c446dc241e8e620005069068d1416/SENTINELS/ASSETS/ngrok/comprobaciontuneldesdemvalpine4.png" alt="Acceso al túnel y verificación en la webapp de Ngrok">
    </li>
    <li>Aquí tienen un ejemplo de otra comprobación  exitosa al túnel desde una máquina Alpine Linux:
     <br>
     <img src="https://github.com/Beasluna/sentinel/blob/3ea8bc62137c446dc241e8e620005069068d1416/SENTINELS/ASSETS/ngrok/comprobaciontuneldesdemvalpine5.png" alt="Comprobación SSH exitosa al túnel desde Alpine Linux">
    </li>
  </ul>
</li>
    <li><strong>Importante</strong>
      <ul>
        <li>
          Cuando ejecutas <code>ngrok tcp 22</code>, Ngrok genera una dirección y puerto aleatorios como:
          <pre><code>Forwarding tcp://0.tcp.ngrok.io:12345 -> localhost:22</code></pre>
          Cada vez que detienes Ngrok con Ctrl + C y lo vuelves a ejecutar, se asignará un puerto diferente. Esto significa que la dirección de conexión cambiará, y tendrás que actualizarla en la máquina desde la que te conectas.
         <br>**Nota:** Véase las siguientes dos imágenes.
          <br>
          <img src="https://github.com/Beasluna/sentinel/blob/deb7d3257c95db14325f7e0127e2947c589a5ec4/SENTINELS/ASSETS/ngrok/nuevadirecciongrok.png" alt="Nueva dirección Ngrok 1">
          <img src="https://github.com/Beasluna/sentinel/blob/deb7d3257c95db14325f7e0127e2947c589a5ec4/SENTINELS/ASSETS/ngrok/nuevadirecciongrok2.png" alt="Nueva dirección Ngrok 2">.
        </li>
      </ul>
    </li>
   <li><strong>Rsync a través del Túnel</strong>
  <ul>
    <li><strong>Preparación del entorno Rsync:</strong></li>
    <ul>
      <li>Creamos un directorio en el servidor y otro en nuestra máquina local con archivos de prueba generados:
        <br>
        <img src="https://github.com/Beasluna/sentinel/blob/6c316c88d9ae3ebbe120be671fe24bf3b53d74a4/SENTINELS/ASSETS/ngrok/rsynk1.png" alt="Creación de directorios para Rsync">
      </li>
      <li>En nuestra máquina virtual (que realizará el rsync), también creamos un directorio donde añadimos tres archivos de prueba de diferentes tamaños:
        <br>
        <img src="https://github.com/Beasluna/sentinel/blob/6c316c88d9ae3ebbe120be671fe24bf3b53d74a4/SENTINELS/ASSETS/ngrok/rsynk2.png" alt="Archivos de prueba en la máquina virtual">
        <pre><code>dd if=/dev/urandom of=archivo_1MB.bin bs=1M count=1
dd if=/dev/urandom of=archivo_10MB.bin bs=1M count=10
dd if=/dev/urandom of=archivo_100MB.bin bs=1M count=100</code></pre>
      </li>
      <li>Ejecutamos `rsync` mediante el túnel creado por Ngrok:</li>
      <ul>
        <li>Paso 1:
          <br>
          <img src="https://github.com/Beasluna/sentinel/blob/main/SENTINELS/ASSETS/ngrok/rsynk3.png" alt="Ejecutando Rsync Paso 1">
        </li>
        <li>Paso 2:
          <br>
          <img src="https://github.com/Beasluna/sentinel/blob/main/SENTINELS/ASSETS/ngrok/rsynk4.png" alt="Ejecutando Rsync Paso 2">
        </li>
        <li>Paso 3:
          <br>
          <img src="https://github.com/Beasluna/sentinel/blob/main/SENTINELS/ASSETS/ngrok/rsynk5.png" alt="Ejecutando Rsync Paso 3">
        </li>
      </ul>
      <li>Como comentamos anteriormente, Ngrok asigna tanto direcciones como puertos aleatorios, por lo que es necesario ejecutar `rsync` de la siguiente manera:
        <pre><code>rsync -avh -e "ssh -p 1142" /home/leo/origen/ rapy@0.tcp.eu.ngrok.io:/home/rapy/Documents/backup_test/</code></pre>
        Usando tanto el puerto como la dirección generada por Ngrok.
      </li>
      <li>Resultados de la sincronización con `rsync`:</li>
      <ul>
        <li>
          <img src="https://github.com/Beasluna/sentinel/blob/b5d762581e28c2b2dffb5c5ee908bdb43f15aea2/SENTINELS/ASSETS/ngrok/rsynk6.png" alt="Resultado Rsync Paso 1">
        </li>
        <li>
          <img src="https://github.com/Beasluna/sentinel/blob/b5d762581e28c2b2dffb5c5ee908bdb43f15aea2/SENTINELS/ASSETS/ngrok/rsynk7.png" alt="Resultado Rsync Paso 2">
        </li>
        <li>
          <img src="https://github.com/Beasluna/sentinel/blob/b5d762581e28c2b2dffb5c5ee908bdb43f15aea2/SENTINELS/ASSETS/ngrok/rsynk8.png" alt="Resultado Rsync Paso 3">
        </li>
      </ul>
    </ul>
    <li><strong>Conclusión</strong></li>
    <ul>
      <li>Ngrok es una herramienta poderosa que permite exponer servicios locales de forma segura a través de Internet sin necesidad de configurar el router o modificar reglas de firewall.</li>
      <li>Al usar Ngrok TCP en el puerto `22`, puedes acceder a tu máquina de forma remota mediante SSH, lo que es útil para administración de servidores, acceso a tu equipo desde cualquier lugar o pruebas de conectividad.</li>
      <li>Sin embargo, es importante recordar que, por defecto, la dirección y el puerto generados cambian cada vez que reinicias Ngrok. Si necesitas una conexión más estable, considera usar una cuenta premium para obtener un puerto TCP fijo.</li>
      <li>En definitiva, Ngrok es una solución rápida y sencilla para establecer túneles seguros, pero si requieres acceso remoto persistente, puedes explorar alternativas como Tailscale, ZeroTier o una VPN propia.</li>
    </ul>
  </ul>
</li>
</details>

<details>
  <summary>🔥 Instalación y Conceptualización de pfSense en un Entorno Virtualizado</summary>
  <ul>
    <li><strong>Introducción a pfSense</strong>
      <p>En el marco del proyecto Sentinel, pfSense emerge como una solución de seguridad y gestión de red altamente efectiva y versátil. Este potente firewall de código abierto, basado en FreeBSD, cuenta con características que lo convierten en una elección ideal para proteger y optimizar nuestra infraestructura de red.</p>
      <p>pfSense se destaca por su robusta capacidad de filtrado de paquetes, permitiendo un control granular sobre el tráfico de red entrante y saliente. Su interfaz web intuitiva facilita la configuración y administración, incluso para usuarios con conocimientos técnicos limitados.</p>
    </li>
    <li><strong>Adaptadores de Red en pfSense</strong>
      <ul>
        <li><strong>Adaptador puente (WAN):</strong> Conecta la interfaz de red virtual con la red física del host, permitiendo que pfSense obtenga una dirección IP directamente del router de Internet. Es esencial para que pfSense funcione como firewall y router, gestionando el tráfico entre la red interna (LAN) y la red externa (Internet).</li>
        <li><strong>Red NAT (LAN):</strong> Permite la traducción de direcciones IP privadas a direcciones públicas, conservando direcciones IPv4 y permitiendo la conexión con otros dispositivos de la red interna sin exponer IPs privadas a la red externa.</li>
      </ul>
    </li>
    <li><strong>Funciones Clave de pfSense</strong>
      <ul>
        <li><strong>Firewall y NAT:</strong> Reglas avanzadas de filtrado y traducción de direcciones para proteger y gestionar el tráfico de red.</li>
        <li><strong>VPN:</strong> Soporte para conexiones seguras mediante OpenVPN e IPsec.</li>
        <li><strong>QoS y Traffic Shaping:</strong> Control del tráfico para priorizar servicios, permitiendo establecer límites de ancho de banda por IP o red.</li>
        <li><strong>IDS/IPS:</strong> Integración con Snort o Suricata como sistemas de detección y prevención de intrusiones, permitiendo monitorear y bloquear tráfico malicioso en tiempo real.</li>
        <li><strong>Portal Cautivo:</strong> Control de acceso a la red mediante autenticación.</li>
      </ul>
    </li>
    <li><strong>Proceso de Instalación de pfSense</strong>
      <p>Antes de profundizar con los conceptos teóricos, procederemos a realizar una demostración práctica de la instalación de pfSense en un entorno virtualizado. Para ello, configuraremos la máquina virtual con dos adaptadores de red. La primera interfaz se conectará a la WAN (salida hacia Internet), mientras que la segunda se destinará a la LAN (conexión con otras máquinas virtuales del laboratorio):</p>
      <ul>
        <li><strong>Adaptador puente (WAN):</strong> Configurado para acceder a Internet y conectarse al router físico, obteniendo una IP pública para que pfSense pueda gestionar el tráfico de la red externa.</li>
          <li>El adaptador puente se utiliza para la interfaz WAN, permitiendo que pfSense obtenga una dirección IP directamente del router de Internet. Esto es esencial para que pueda funcionar como firewall y router, gestionando el tráfico entre la red interna (LAN) y la red externa (Internet)</li>
        <li><strong>Red NAT (Network Address Translation: LAN):</strong> es una tecnología en redes que permite la traducción de direcciones IP privadas a una dirección IP pública. Esta técnica es esencial para conservar las direcciones IPv4 públicas, que son un recurso limitado. </li>
<li>Se utilizará para la comunicación entre los dispositivos internos de la red sin exponer las IPs internas al exterior.</li>
      </ul>
      <p>Una vez iniciada la máquina de pfSense, verás una pantalla de bienvenida que te guiará a través del proceso de configuración inicial, donde podrás aceptar los términos de uso y comenzar la instalación del sistema.</p>
      <li>
      <strong>Pantalla de instalación de pfSense:</strong><br>
      <img src="https://github.com/Beasluna/sentinel/blob/1a482c65a59e25ddcace367038a5523571d87ae2/SENTINELS/ASSETS/pfSense/Posinstalacion.png" 
            alt="Pantalla de instalación de pfSense" width="600">
      </li>
      <li>
        <strong>Nos focalizamos en la configuración de interfaces:</strong><br>
        Una vez que pfSense esté instalado, se te pedirá que configures las interfaces de red, como WAN y LAN. Esto es crucial para establecer conexiones con Internet y tu red local.
      </li>
      <li>
        Para acceder a la interfaz web de administración de pfSense desde cualquier navegador, primero debemos deshabilitar temporalmente el firewall. Para ello, ejecutamos el siguiente comando en la terminal de pfSense:
      </li>
      <li>
        <strong>Deshabilitar firewall temporalmente:</strong><br><br>
        <code>pfctl -d</code> Este comando desactiva el firewall de pfSense de forma temporal, permitiendo el acceso a la GUI sin restricciones.<br>
        <img src="https://github.com/Beasluna/sentinel/blob/1a482c65a59e25ddcace367038a5523571d87ae2/SENTINELS/ASSETS/pfSense/pfctl.png" 
             alt="Comando pfctl en pfSense" width="600">
      </li>
      <li>
        <strong>Verificación de la IP asignada:</strong><br><br>
        Tras deshabilitar el firewall, podemos verificar la IP asignada a la interfaz de administración.<br>
        <img src="https://github.com/Beasluna/sentinel/blob/1a482c65a59e25ddcace367038a5523571d87ae2/SENTINELS/ASSETS/pfSense/ip.png" 
             alt="Verificación de IP en pfSense" width="600">
      </li>
      <li>
        <strong>Acceso a la interfaz web:</strong><br><br>
        Ahora podemos acceder a la interfaz web de pfSense, aunque el navegador pueda mostrar una advertencia indicando que el sitio no es seguro o no es de confianza. Esto ocurre porque pfSense utiliza un certificado autofirmado por defecto. Para continuar, simplemente debemos aceptar la excepción de seguridad en el navegador.<br>
        <img src="https://github.com/Beasluna/sentinel/blob/13b40b4beec08d9d607e7ca87dc30b946a94912c/SENTINELS/ASSETS/pfSense/irtefaz.png"> <br><br>
        Accederemos introduciendo la URL: <code>https://192.168.123.24</code> en el navegador.<br>   
        <ul>
          <li><strong>Usuario:</strong> admin</li>
          <li><strong>Contraseña:</strong> pfsense<li>
        </ul>
      </li>
      <li>Una vez dentro de la interfaz web, pfSense nos guiará a través de un asistente de configuración donde definiremos: </li> <br><br>
        <img src="https://github.com/Beasluna/sentinel/blob/1a482c65a59e25ddcace367038a5523571d87ae2/SENTINELS/ASSETS/pfSense/generalinf.png" 
             alt="Interfaz web de pfSense" width="600">
        <ul>
          <li><strong>Hostname:</strong> Nombre que identificará a pfSense en la red.</li>
          <li><strong>Domain:</strong> Dominio al que pertenece el firewall (opcional).</li>
          <li><strong>Servidores DNS:</strong> Podemos utilizar los de Google (8.8.8.8, 8.8.4.4), Cloudflare (1.1.1.1, 1.0.0.1) o el resolver interno (127.0.0.1).</li>
        </ul>
        Estos parámetros son fundamentales para el correcto funcionamiento de la red y el acceso a internet.<br>
        <img src="https://github.com/Beasluna/sentinel/blob/1a482c65a59e25ddcace367038a5523571d87ae2/SENTINELS/ASSETS/pfSense/setup.png" 
             alt="Asistente de configuración de pfSense" width="600"> <br><br>
        <ul> 
          En esta sección, se configuran el Time Server Hostname y la Zona Horaria (Time Zone).
          <li>Por defecto, pfSense selecciona un servidor de tiempo adecuado y la zona horaria predeterminada. A menos que necesitemos realizar algún cambio específico, simplemente hacemos clic en "Next" para continuar con la configuración. </li>
          <li>pfSense nos da la opción de volver a configurar la interfaz WAN. Esto es útil en caso de que hayamos cometido algún error durante la configuración inicial o si necesitamos realizar algún ajuste, como cambiar el tipo de conexión (DHCP, estática, PPPoE) o modificar otros parámetros de red. </li>
          Si no es necesario realizar ajustes en la configuración puedes simplemente avanzar al siguiente paso sin hacer cambios. Esto te permitirá continuar con la configuración del sistema sin retrasos innecesarios.
          <img src="https://github.com/Beasluna/sentinel/blob/1a482c65a59e25ddcace367038a5523571d87ae2/SENTINELS/ASSETS/pfSense/wan.png"
            alt="Interfaz Wan" width="600"> <br><br>
        </ul>
        <ul>
        Ahora configuramos la interfaz LAN, donde definimos la dirección IP que tendrá pfSense dentro de la red interna.<br>
        <il>Aquí podemos establecer una IP estática para el firewall, que servirá como puerta de enlace para los dispositivos de la red local. También podemos ajustar la máscara de subred y otros parámetros si es necesario. </il><br>
        Si no requerimos cambios adicionales, simplemente avanzamos al siguiente paso. <br><br>
          <img src="https://github.com/Beasluna/sentinel/blob/1a482c65a59e25ddcace367038a5523571d87ae2/SENTINELS/ASSETS/pfSense/lan.png"
            alt="Interfaz Lan" width="600"> <br>
        </ul>
        <ul>
          En este paso, podemos cambiar tanto el nombre de usuario como la contraseña de acceso a la interfaz web de pfSense. <br>
          <il>Es recomendable cambiar la contraseña predeterminada (que es pfsense) por una más segura para proteger el acceso al sistema. También podemos cambiar el nombre de usuario si lo deseamos, aunque el valor predeterminado (admin) es comúnmente suficiente</il><br><br>
          Una vez realizados los cambios, avanzamos para completar la configuración.
          <img src="https://github.com/Beasluna/sentinel/blob/1a482c65a59e25ddcace367038a5523571d87ae2/SENTINELS/ASSETS/pfSense/setadmingui.png"
            alt="Cambio de usuario y contraseña" width="600"> <br>
        </ul>
        <ul>
        <il>Después de realizar todos los cambios necesarios en la configuración inicial, pfSense nos pedirá que realicemos un reinicio o reload del sistema. <br>
          Esto aplicará todas las configuraciones realizadas y reiniciará el servicio para que los cambios entren en efecto.</il><br><br>
        <il>Hacemos clic en "Reload" para que pfSense reinicie con la nueva configuración. </il> <br>
        <il>Después de este paso, ya estaremos listos para acceder a la interfaz web y seguir con la configuración avanzada.</il> <br>
          <img src="https://github.com/Beasluna/sentinel/blob/1a482c65a59e25ddcace367038a5523571d87ae2/SENTINELS/ASSETS/pfSense/reload.png"
            alt="Reload" width="600"> <br><br>
          <img src="https://github.com/Beasluna/sentinel/blob/13b40b4beec08d9d607e7ca87dc30b946a94912c/SENTINELS/ASSETS/pfSense/reload1.png"
            alt="Reload" width="600"> <br><br>
          <img src="https://github.com/Beasluna/sentinel/blob/1a482c65a59e25ddcace367038a5523571d87ae2/SENTINELS/ASSETS/pfSense/wizard.png"
            alt="Reload Complete" width="600"> <br><br>
        </ul>
      </li>
      <summary>📊 Dashboard de pfSense</summary>
  <ul>
    <li><strong>Introducción al Dashboard</strong>
      <p>El dashboard de pfSense proporciona un resumen general del estado del sistema y acceso rápido a las configuraciones más importantes.</p>
    </li>
    <li><strong>1. Barra de Navegación Superior</strong>
      <p>En la parte superior de la página, encontrarás una barra de navegación con las opciones principales:</p>
      <ul>
        <li><strong>System:</strong> Configuración del sistema, incluyendo reinicios y actualizaciones.</li>
        <li><strong>Interfaces:</strong> Configuración de las interfaces de red, como WAN y LAN.</li>
        <li><strong>Firewall:</strong> Reglas de firewall, NAT y configuraciones relacionadas.</li>
        <li><strong>Services:</strong> Servicios adicionales como VPN, DHCP, DNS, etc.</li>
        <li><strong>Diagnostics:</strong> Herramientas de diagnóstico y logs.</li>
      </ul>
    </li>
    <li><strong>2. Resumen del Estado del Sistema</strong>
      <p>Debajo de la barra de navegación, se muestra una vista general del estado del sistema:</p>
      <ul>
        <li><strong>Estado de las interfaces:</strong> Información sobre las interfaces WAN y LAN, incluyendo si están activas y su dirección IP asignada.</li>
        <li><strong>Uso de CPU y memoria:</strong> Un gráfico que muestra el uso actual de CPU y memoria del sistema.</li>
        <li><strong>Estado del Firewall:</strong> Indica si el firewall está activo o si hay alguna alerta relevante.</li>
      </ul>
    </li>
    <li><strong>3. Notificaciones y Alertas</strong>
      <p>En la parte superior o inferior de la página, puede haber un área dedicada a notificaciones y alertas:</p>
      <ul>
        <li>Advertencias de seguridad.</li>
        <li>Actualizaciones disponibles.</li>
        <li>Problemas de configuración.</li>
      </ul>
    </li>
    <li><strong>4. Accesos Rápidos a Funciones Comunes</strong>
      <p>En el centro o lateral del dashboard, encontrarás accesos rápidos a tareas comunes:</p>
      <ul>
        <li>Reiniciar el sistema.</li>
        <li>Ver los logs del sistema.</li>
        <li>Consultar las conexiones activas o estadísticas de tráfico.</li>
      </ul>
    </li>
    <li><strong>5. Estadísticas de Tráfico y Conexiones</strong>
      <p>El dashboard también incluye gráficos o tablas que muestran:</p>
      <ul>
        <li>Tráfico en tiempo real.</li>
        <li>Conexiones activas.</li>
        <li>Velocidades de descarga y carga.</li>
        <img src="https://github.com/Beasluna/sentinel/blob/1a482c65a59e25ddcace367038a5523571d87ae2/SENTINELS/ASSETS/pfSense/dashboard.png"
          alt="Dashboard" width="600"> <br><br>
      </ul>
    </li>
  </ul>
    </li>
  </ul>
</details>

<details>
  <summary>📋 POLÍTICA DE COPIAS DE SEGURIDAD Y RESTAURACIÓN</summary>

  <ul>
    <li><b>Introducción</b>
      <ul>
        <li>Esta política establece los procedimientos para garantizar la disponibilidad, integridad y seguridad de los datos del proyecto SENTINEL ante incidentes. Es fundamental para proteger los activos de información críticos de SENTINEL y mantener la confianza en un entorno de amenazas cibernéticas en constante evolución 🚨.</li>
      </ul>
    </li>
    <li><b>Objetivos</b>
      <ul>
        <li>Garantizar la protección de los datos críticos de SENTINEL 🔒.</li>
        <li>Asegurar la disponibilidad de copias de seguridad recientes y verificadas 📂.</li>
        <li>Priorizar la recuperación de sistemas y datos críticos para minimizar el tiempo de inactividad 🚀.</li>
        <li>Implementar mecanismos de cifrado y verificación de integridad 🔑.</li>
      </ul>
    </li>
    <li><b>Tipos de Copias de Seguridad</b>
      <table>
        <tr>
          <th>Tipo</th>
          <th>Descripción</th>
        </tr>
        <tr>
          <td><b>Backup Completo</b></td>
          <td>Respaldo completo de directorios críticos (/etc, /opt, /home, /var/www) almacenado en formato .tar.gz.gpg con cifrado GPG. 🔒</td>
        </tr>
        <tr>
          <td><b>Backup Incremental</b></td>
          <td>Captura cambios desde el último backup completo para optimizar almacenamiento y velocidad del proceso 🚀.</td>
        </tr>
      </table>
    </li>
    <li><b>Procedimiento de Copia de Seguridad</b>
      <ul>
        <li><b>Ejecución del Script:</b> Manual con parámetro "tot" para completo o "int" para incremental ⏰.</li>
        <li><b>Compresión y Cifrado:</b> Datos comprimidos con tar y cifrados con GPG usando AES256 🔒.</li>
        <li><b>Verificación de Integridad:</b> Implícita en el proceso de GPG 🔑.</li>
        <li><b>Almacenamiento Local:</b> En /root/backups. 📁</li>
        <li><b>Registro en Log:</b> Documentación en /var/log/backup.log 📈.</li>
        <li><b>Notificación:</b> Correo de confirmación al administrador (sentinelmlbjp@gmail.com) 📨.</li>
      </ul>
    </li>
    <li><b>Procedimiento de Restauración</b>
      <ul>
        <li><b>Selección del Backup:</b> Identificar el archivo .gpg más reciente o requerido 📊.</li>
        <li><b>Desencriptación:</b> Uso de GPG con la frase de paso correcta para recuperar datos 🔑.</li>
        <li><b>Extracción de Archivos:</b> Desempaquetado del archivo .tar.gz. 🔓.</li>
        <li><b>Restauración Selectiva:</b> Copia de archivos necesarios al sistema 🗂️.</li>
        <li><b>Registro:</b> Documentación manual del proceso de restauración 📈.</li>
        <li><b>Verificación:</b> Comprobación de la integridad y funcionalidad de los datos restaurados 📝.</li>
      </ul>
    </li>
    <li><b>Consideraciones Adicionales</b>
      <ul>
        <li><b>Contraseña:</b> Se utiliza una frase de paso predefinida para el cifrado GPG. 📊.</li>
        <li><b>Directorios Respaldados:</b> /etc, /opt, /home, /var/www 🔑.</li>
        <li><b>Herramientas Utilizadas:</b> rsync para copia, tar para compresión, GPG para cifrado, ngrok como túnel 🔓.</li>
      </ul>
    </li>
    <li><b>Infraestructura y Comunicaciones</b>
      <ul>
        <li><b>Dispositivo Principal:</b> Se utiliza una Raspberry Pi como servidor de backup remoto del proyecto SENTINEL. 📊.</li>
        <li><b>Túnel Seguro:</b> Se implementa ngrok para crear un túnel seguro y exponer los servicios locales de la Raspberry Pi a Internet. 🔑.</li>
        <li><b>Sistema de Correo:</b>
          <ul>
            <li>Se utiliza una máquina con Alpine Linux para el envío de correos electrónicos. 🗂️.</li>
            <li>La herramienta msmtp está configurada en Alpine para el envío de correos a través de Gmail. 📈.</li>
            <li>Los correos de notificación se envían desde la máquina Alpine a una cuenta de Gmail designada. 📝.</li>
          </ul>
        </li>
      </ul>
    </li>
    <li><b>Seguridad de Comunicaciones</b>
      <ul>
        <li><b>Configuración de msmtp:</b> Se debe asegurar que el archivo de configuración <code>/etc/msmtprc</code> en la máquina Alpine contiene los detalles de autenticación y servidor de Gmail correctos y seguros. 🔒</li>
        <li><b>Autenticación de Gmail:</b> Verificar que la configuración de seguridad de la cuenta de Gmail permite el acceso de la aplicación msmtp, considerando el uso de autenticación OAuth2 para mayor seguridad. 🔑</li>
      </ul>
    </li>
    <li><b>Responsabilidades en las Asignaciones de Roles</b>
      <ul>
        <li><b>Responsable Principal (Joel):</b> Encargado de supervisar todo el proceso de backup y tomar decisiones críticas. 👨‍💻</li>
        <li><b>Operadores de Backup (Bea y Leo):</b> Personal técnico que ejecuta las copias de seguridad según el calendario establecido. 🔄</li>
        <li><b>Verificadores (Gea y Marc):</b> Encargados de comprobar la integridad y accesibilidad de los backups realizados. ✅</li>
      </ul>
    </li>
    <li><b>Código del Script de Backup</b></li>
  </ul>

  <details>
    <summary>📜 Ver Código del Script de Backup</summary>
    <pre><code>
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
    </code></pre>
  </details>

  <details>
    <summary>📜 Ver Código del Script de Restauración</summary>
    <pre><code>
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
    </code></pre>
  </details>
</details>

  <details>
      <summary>📖 Documentación de Grafana</summary>
  
  1. **Actualiza el sistema**
     ```bash
     sudo apt update && sudo apt upgrade -y
     ```
  2. **Agregamos el reposititorio oficial de Grafana**
     ```bash
     wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
     ```
  3. **Creamos el archivo de la lista del repositorio***
     ```bash
     echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee /etc/apt/sources.list.d/grafana.list
     ```
  4. **Instalamos grafana y lo habilitamos**
     ```bash
     sudo systemctl start grafana-server
     sudo systemctl enable grafana-server
     ```
  6. **Verificacion del servicio**
     ```bash
     sudo systemctl status grafana-server
     ```
        Para más información sobre Grafana, consulta la  
        <a href="https://grafana.com/docs/grafana/latest/">documentación oficial</a>.
     </details>

   <details>
      <summary>📖 Documentación de Prometheus</summary>
      Para más información sobre Prometheus, consulta la  
      <a href="https://prometheus.io/docs/introduction/overview/">documentación oficial</a>.
    </details>

   <details>
      <summary>📖 Documentación de Proxmox</summary>
      Para más información sobre Proxmox y sus servicios de soporte, consulta la  
      <a href="https://www.proxmox.com/en/services/support-services/support#support-resources">documentación oficial</a>.
    </details>

   <details>
      <summary>📖 Documentación de Snort</summary>
      Para más información sobre Snort, consulta la  
      <a href="https://www.snort.org/documents">documentación oficial</a>.
    </details>

   <details>
      <summary>📖 Documentación de Docker</summary>
      Para más información sobre Docker, consulta la  
      <a href="https://docs.docker.com/manuals/">documentación oficial</a>.
    </details>

   <details>
      <summary>📖 Documentación de MySQL</summary>
      Para más información sobre MySQL, consulta la  
      <a href="https://dev.mysql.com/doc/refman/8.4/en/">documentación oficial</a>.
    </details>
  </ul>
</details>


    
<details>
  <summary>🤝 Contribución</summary>

</details>



<details>
  <summary>🌟 Equipo </summary>
<ul>- Leonardo: Arquitecto de Red </ul>
<ul>- Joel: Especialista en Virtualización </ul>
<ul>- Beatriz: Experta en Seguridad Perimetral </ul>
<ul>- Marc: Analista de Amenazas </ul>
</details>


<details>
  <summary> Definiciones de Roles en la Matriz RACI </summary>

  | Símbolo | Rol          | Descripción                                                   |
  |---------|--------------|---------------------------------------------------------------|
  | R       | Responsable  | La persona o personas encargadas de realizar la tarea.       |
  | A       | Aprobador    | La persona que debe aprobar el trabajo realizado.            |
  | C       | Consultado   | Personas que deben ser consultadas antes de tomar decisiones.|
  | I       | Informado    | Personas que deben ser informadas sobre el progreso o resultados.|
</details>

<details>
  <summary>📊 Matriz RACI</summary>

  | Actividad                                 | Leonardo | Joel    | Beatriz | Marc    |
  |-------------------------------------------|----------|---------|---------|---------|
  | Diseño de arquitectura de red             | R, A    | C       | C       | C       |
  | Implementación de VLANs                   | R        | C       | C       | I       |
  | Configuración de Proxmox VE               | C        | R, A    | I       | I       |
  | Despliegue de servidores virtuales        | C        | R       | C       | C       |
  | Implementación de firewall pfSense        | C        | I       | R, A    | C       |
  | Configuración de IDS/IPS                  | C        | I       | R       | C       |
  | Gestión de bases de datos                 | I        | C       | R, A    | I       |
  | Implementación de Docker                   | I        | R, A    | C       | C       |
  | Sistema de monitorización en tiempo real   | C        | C       | C       | R, A    |
  | Análisis de malware y sandboxing          | I        | C       | C       | R, A    |
  | Implementación de honeypots               | C        | C       | C       | R, A    |
  | Configuración de VPN                       | C        | C       | R       | C       |
  | Pruebas de penetración                    | C        | C       | C       | R       |
  | Documentación técnica                      | H        | H       | H       | H       |
  | Presentación final del proyecto            | H        | H       | H       | H       |

</details>


<details>
  <summary>📊 Diagrama de Gantt de Responsabilidades del Equipo </summary>

| Semana      | Actividades de Leonardo (Arquitecto de Red)                                   | Actividades de Joel (Especialista en Virtualización)                       | Actividades de Beatriz (Experta en Seguridad Perimetral)                 | Actividades de Marc (Analista de Amenazas)                               |
|-------------|------------------------------------------------------------------------------|--------------------------------------------------------------------------|---------------------------------------------------------------------------|-------------------------------------------------------------------------|
| **1-4**     | 🟦 **Diseño de la arquitectura de red**                                      | 🟩 **Planificación de Proxmox VE**                                     | 🟨 **Configuración del firewall pfSense**                                  | 🟪 **Diseño del sistema de monitorización**                               |
|             | - Segmentación con VLANs                                                      | - Estructura de contenedores Docker                                     | - Planificación del IDS/IPS                                                | - Implementación de honeypots                                            |
|             | - Definición de zonas de seguridad                                            | - Requisitos para servidores virtuales                                   | - Políticas de seguridad para bases de datos                              | - Procedimientos para análisis de malware                                 |
|             | - Diagramas detallados de la topología                                       |                                                                          |                                                                           |                                                                         |
| **5-8**     | 🟦 **Implementación de la segmentación**                                      | 🟩 **Instalación y configuración**                                      | 🟨 **Implementación del firewall pfSense**                                 | 🟪 **Implementación del sistema básico**                                  |
|             | - Configuración de VLANs                                                      | - Proxmox VE y servidores virtuales                                     | - Primeras políticas de seguridad                                          | - Herramientas iniciales para análisis                                    |
|             | - Conductos de comunicación entre zonas                                        |                                                                          |                                                                           |                                                                         |
| **9-12**    | 🟦 **Optimización y técnicas avanzadas**                                      | 🟩 **Despliegue y configuración**                                       | 🟨 **Implementación del IDS/IPS**                                         | 🟪 **Implementación avanzada**                                            |
|             | - Port Knocking                                                               | - Contenedores Docker                                                   | - Filtrado DNS con Pi-hole                                                | - Cuckoo Sandbox para análisis                                           |
|             |                                                                              |                                                                          |                                                                           | - Honeypots (T-Pot)                                                    |
| **13**      | 🟥 **Pruebas integrales del sistema**                                         | 🟥 **Pruebas integrales del sistema**                                   | 🟥 **Pruebas integrales del sistema**                                     | 🟥 **Pruebas integrales del sistema**                                   |
|             | - Ajustes basados en resultados                                               | - Ajustes basados en resultados                                         | - Ajustes basados en resultados                                           | - Ajustes basados en resultados                                         |
|             | - Colaboración en resolución de problemas interdepartamentales                | - Colaboración en resolución de problemas interdepartamentales          | - Colaboración en resolución de problemas interdepartamentales            | - Colaboración en resolución de problemas interdepartamentales          |

### Leyenda
- **🟦 Leonardo**: Arquitecto de Red
- **🟩 Joel**: Especialista en Virtualización
- **🟨 Beatriz**: Experta en Seguridad Perimetral
- **🟪 Marc**: Analista de Amenazas
- **🟥 Todos**: Actividades colaborativas al final del proyecto



</details>

<details>
<ul>Contribuciones y feedback son bienvenidos. Para más información, consulta nuestra documentación. </ul>
</details>
</details>
