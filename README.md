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

### Pasos
1. Construye las imágenes y levanta los contenedores en segundo plano:
   ```bash
   docker compose up --build -d
   ```
2. Inicializa la base de datos MySQL (dentro del contenedor web):
   ```bash
   docker compose exec web bin/rails db:prepare
   ```
3. Carga los datos de prueba (opcional):
   ```bash
   docker compose exec web bin/rails db:seed
   docker compose exec web bin/rails runner script/add_placeholder_images.rb
   ```
4. Ingresa a la aplicación. Nginx estará escuchando en el puerto `80`.
   - Abre tu navegador y visita: `http://localhost`

### Detener los contenedores
Para apagar los servicios sin perder los datos de MySQL, ejecuta:
```bash
docker compose down
```

## Credenciales de Administrador por defecto
Si ejecutas las semillas (`db:seed`), el usuario administrador por defecto será:
- **Email:** `admin@example.com`
- **Contraseña:** `test123`
