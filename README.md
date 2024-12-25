# 🌟 Proyecto de Horóscopo con Login 🌟

## 📝 Descripción

Este proyecto es una aplicación web sencilla diseñada para consultar el **horóscopo chino** basado en el año de nacimiento del usuario. 🐲✨  
Incluye funciones como:  
🔐 **Inicio de sesión**  
📝 **Registro de usuarios**  
⚙️ **Gestión de usuarios**

---

## ✅ Requisitos Previos

Antes de ejecutar este proyecto, asegúrate de contar con lo siguiente:  

1. ☕ **Java 21**  
2. 🐱 **Apache Tomcat 11.0.1**  
3. 🐬 **MySQL (o un sistema compatible)** para gestionar la base de datos.  
4. 🛠️ **Un IDE compatible**, como IntelliJ IDEA o Eclipse.  

---

## ⚙️ Configuración

### 📂 1. Configuración del Archivo `.env`  

El archivo `.env` se encuentra en:  
**`[src/main/resources]`** 📁 y contiene las configuraciones esenciales para la conexión con la base de datos.  

Ejemplo de contenido:  

```env
DB_URL=jdbc:mysql://localhost:3306/bd_horoscopo  
DB_USER=tu_usuario  
DB_PASSWORD=tu_contraseña
```
  ### 🗂️ 2. Configuración de la Base de Datos  

El archivo **`db.sql`** se encuentra en la raíz del proyecto 📌.  
Este archivo contiene:  
🔸 Instrucciones SQL necesarias para crear la estructura de la base de datos.  
🔸 Datos iniciales para poblar las tablas de forma automática.  

