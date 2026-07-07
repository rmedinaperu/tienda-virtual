# Store Project

Bienvenido al repositorio de la tienda en línea. Este proyecto está basado en **Ruby on Rails** y utiliza **Solidus** como plataforma de comercio electrónico.   

A continuación encontrarás las instrucciones para levantar el proyecto en diferentes entornos.

## 1. Entorno de Desarrollo Local (macOS / Linux)

Para trabajar de manera local con la base de datos por defecto (SQLite), sigue estos pasos:

### Prerrequisitos
- Ruby 3.4.1 (puedes usar rbenv, rvm o asdf).
- Homebrew (en macOS) para dependencias del sistema.
- Librería `vips` instalada (`brew install vips`).

### Pasos
1. Clona el repositorio e instala las dependencias de Ruby:
   ```bash
   bundle install
   ```
2. Prepara la base de datos y carga los datos de prueba (semillas):
   ```bash
   bin/rails db:prepare
   bin/rails db:seed
   ```
3. Si los productos no tienen imágenes, ejecuta el script para generar placeholders:
   ```bash
   bin/rails runner script/add_placeholder_images.rb
   ```
4. Levanta el servidor de desarrollo (Rails + Tailwind CSS watcher):
   ```bash
   ./bin/dev
   ```
   Tu aplicación estará disponible en `http://localhost:3000`.

---

## 2. Entorno con Docker Compose (Kali Linux / Producción)

El proyecto está configurado para ejecutarse en contenedores utilizando **Nginx** (como Proxy Reverso), **Puma** (Servidor de Rails) y **MySQL** (Base de datos).

### Prerrequisitos
- Tener instalado `docker` y `docker compose` en la máquina.
- Contar con la clave maestra de producción (`RAILS_MASTER_KEY`).

#### Configuración de la Clave Maestra (`RAILS_MASTER_KEY`)
Para que Rails pueda descifrar el archivo `config/credentials.yml.enc` en producción, debes configurar la clave maestra de alguna de las siguientes maneras:

* **Opción A: Usar la clave original (Recomendado)**
  Si ya tienes la clave original que encriptó el archivo `config/credentials.yml.enc`, crea un archivo `.env` en la raíz del proyecto y colócala allí:
  ```bash
  echo "RAILS_MASTER_KEY=tu_clave_maestra_aqui" > .env
  ```

* **Opción B: Generar una nueva clave y credenciales desde cero**
  Si no cuentas con la clave original, Rails no podrá iniciar. Debes restablecer la configuración de credenciales de forma local:
  1. Elimina el archivo encriptado existente:
     ```bash
     rm config/credentials.yml.enc
     ```
  2. Genera una nueva clave y un nuevo archivo de credenciales (asegúrate de estar usando Ruby compatible en tu máquina local, por ejemplo usando `frum`):
     ```bash
     EDITOR=nano bin/rails credentials:edit
     ```
     *(Guarda y cierra el editor. Esto creará el archivo `config/master.key` con tu nueva clave).*
  3. Coloca esta nueva clave en tu archivo `.env` para que Docker Compose la reconozca:
     ```bash
     echo "RAILS_MASTER_KEY=$(cat config/master.key)" > .env
     ```

#### Pruebas locales sin SSL (HTTP) y Almacenamiento Local
Por defecto, la aplicación en producción fuerza las conexiones a través de SSL y utiliza almacenamiento en la nube (DigitalOcean). Si estás realizando pruebas en local desde `http://localhost` (HTTP sin certificados de seguridad y usando almacenamiento local en disco), debes agregar las siguientes variables a tu archivo `.env`:
```env
RAILS_ASSUME_SSL=false
RAILS_FORCE_SSL=false
ACTIVE_STORAGE_SERVICE=local
```


### Pasos

1. Construye las imágenes y levanta los contenedores en segundo plano:
   ```bash
   docker compose up --build -d
   ```
   *(Nota: El contenedor web ejecutará automáticamente `bin/rails db:create db:migrate` en su inicio para configurar la base de datos).*

2. Carga los datos de prueba (opcional):
   ```bash
   docker compose exec web bin/rails db:seed
   ```
   *(Opcional: Si quieres generar imágenes de prueba para los productos)*:
   ```bash
   docker compose exec web bin/rails runner script/add_placeholder_images.rb
   ```

3. Ingresa a la aplicación. Nginx estará escuchando en el puerto `80`.
   - Abre tu navegador y visita: `http://localhost` (o la dirección IP de tu máquina Kali Linux)



### Detener los contenedores
Para apagar los servicios sin perder los datos de MySQL, ejecuta:
```bash
docker compose down
```

## Credenciales de Administrador por defecto
Si ejecutas las semillas (`db:seed`), el usuario administrador por defecto será:
- **Email:** `admin@example.com`
- **Contraseña:** `test123`
