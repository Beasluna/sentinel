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
    <summary>🚀 HIPERVISOR: DEFINICIÓN </summary>
Los hipervisores, o monitores de máquinas virtuales, son sistemas de software que crean y ejecutan máquinas virtuales. Estos hipervisores separan el sistema operativo y los recursos de las máquinas virtuales para crearlas y gestionarlas. El hardware físico que funciona como hipervisor se llama "host", mientras que las máquinas virtuales que utilizan estos recursos se llaman "huéspedes".

El hipervisor trata los recursos como un pool que se puede redistribuir fácilmente entre las máquinas virtuales existentes o las nuevas. Todos los hipervisores requieren algunos elementos del sistema operativo para ejecutar las máquinas virtuales, como el gestor de memoria, el programador de procesos, los controladores de dispositivos, etc.

El hipervisor asigna los recursos a cada máquina virtual y gestiona su programación en función de los recursos físicos disponibles. Con un hipervisor, es posible ejecutar varios sistemas operativos al mismo tiempo, compartiendo los mismos recursos de hardware virtualizados. Algunas opciones populares de hipervisor son VMware ESXi y vSphere, KVM, Xen y Microsoft Hyper-V.

En otras palabras, un hipervisor permite que varias instancias de sistema operativo trabajen juntas y compartan los mismos recursos físicos de la computadora. Esto se conoce como virtualización, y estas instancias se llaman máquinas virtuales. El hipervisor, también conocido como monitor de máquina virtual, administra estas máquinas virtuales mientras se ejecutan simultáneamente, separándolas lógicamente y asignando recursos de manera individual. Esto evita que una máquina virtual afecte a las demás, asegurando que si una de ellas se bloquea o tiene problemas, las demás sigan funcionando correctamente.

</details>

  <details>
    
  <summary>📘 PROXMOX</summary>

  Proxmox Virtual Environment (Proxmox VE) es una solución de código abierto para la virtualización empresarial, basada en Debian GNU/Linux. Su objetivo es optimizar el uso de los recursos existentes, minimizar el coste del hardware y el tiempo empleado.
  
  **Características principales:**
  
  *   **Virtualización:** Utiliza KVM para máquinas virtuales y LXC para contenedores.
  *   **Gestión Centralizada:** Interfaz web intuitiva para administrar VMs y contenedores.
  *   **Almacenamiento y Redes:** Soporta diversos tipos de almacenamiento y SDN.
  *   **Alta Disponibilidad y Clusterización:** Permite crear clústeres para redundancia.
  *   **Seguridad y Respaldo:** Actualizaciones regulares y herramientas integradas de backup.
  
  Proxmox VE se distribuye bajo la licencia GNU AGPLv3, permitiendo su uso gratuito y la inspección del código fuente.

</details>


 
<details>
  <summary>📘 Guía de Uso</summary>
  <ul>
    <details>
      <summary>📘 Clúster Proxmox</summary>
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
