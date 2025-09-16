# Trabajo - Terraform + Docker

# Descripcion Breve:
Paso 01: Instalar Terraform 
Usamos Docker para poder realizar los pasos siguientes, en visual code creamos los archivos Terraform
luego ejecutamos los codigos y nos dio este resultado

<img width="1241" height="691" alt="image" src="https://github.com/user-attachments/assets/6fd4003f-fe07-4a4d-b2d3-cedee624e9b2" />


# Integrantes:

1. Vera Perez Xiomara Natali
2. Lazaro Fernandez Yenifer Maydeli

# Instrucciones

### 1. Inicialización de Terraform y descarga de proveedores

Ejecutamos el comando en la terminal de visual code

```bash
terraform init
```

### 2. Ejecución de la configuración en Terraform


```bash
terraform apply -auto-approve
```

### 3. Visualización de contenedores activos en Docker

Una vez aplicada la infraestructura con Terraform, puedes verificar qué contenedores están corriendo usando:

```bash
docker ps
```
### 4. Revisión de redes Docker creadas

Para verificar la configuración y los contenedores conectados a una red (grafananet, appnet, persistencenet), utiliza el comando:

```bash
docker network inspect persistence_net
```
### 5. Comprobación de accesibilidad de los servicios

Abre tu navegador web y accede al servicio a través de `localhost` y el puerto correspondiente.

Por ejemplo, ingresa:`http://localhost:8001/`


