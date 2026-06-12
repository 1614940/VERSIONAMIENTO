# Sistema Veterinaria

Sistema web para gestión de veterinaria con **frontend en React/Vite**, **backend en Node.js/Express** y base de datos **MySQL**.

## Requisitos

Antes de ejecutar el proyecto, instalar:

- Node.js
- MySQL Server
- Git

## 1. Clonar el repositorio

```bash
git clone https://github.com/1614940/VERSIONAMIENTO.git
cd VERSIONAMIENTO
```

## 2. Crear la base de datos

Abrir MySQL y ejecutar el script:

```bash
mysql -u root -p < database/veterinaria.sql
```

También se puede importar `database/veterinaria.sql` desde phpMyAdmin o MySQL Workbench.

## 3. Configurar el backend

Entrar a la carpeta del backend:

```bash
cd backend
npm install
```

Copiar el archivo de ejemplo:

```bash
copy .env.example .env
```

En Linux/Mac:

```bash
cp .env.example .env
```

Editar `.env` con los datos de MySQL de la PC donde se ejecutará:

```env
DB_NAME=veterinaria
DB_USER=root
DB_PASSWORD=tu_password_mysql
DB_HOST=localhost
DB_PORT=3306
JWT_SECRET=cambia_este_secreto
```

Ejecutar el backend:

```bash
npm run dev
```

El backend corre en:

```text
http://localhost:4000
```

## 4. Ejecutar el frontend

Abrir otra terminal desde la raíz del proyecto y ejecutar:

```bash
cd frontend
npm install
npm run dev
```

El frontend normalmente corre en:

```text
http://localhost:5173
```

## Usuario de prueba

Después de importar la base de datos, se puede iniciar sesión con:

```text
Email: admin@veterinaria.com
Contraseña: 123456
```

## Notas

- No se sube `node_modules`; cada PC debe ejecutar `npm install` en `backend` y `frontend`.
- No se sube el archivo `.env` real porque contiene configuración local/privada.
- Si el profesor usa otra contraseña de MySQL, debe cambiar `DB_PASSWORD` en `backend/.env`.
