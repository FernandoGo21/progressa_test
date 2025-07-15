# 📝 Gestor de Tareas con Rick & Morty

Aplicación web desarrollada con **Django** para gestionar tareas y asociarlas a personajes de la serie **Rick & Morty**, consumiendo su API oficial.

---

## 🚀 Características

- Crear, editar y eliminar tareas
- Asociar un personaje de Rick & Morty a una tarea
- Visualización de personajes paginados desde la API
- Desasociar personaje desde el detalle de la tarea
- Login/Register/Logout de usuarios

---

## ⚙️ Tecnologías usadas

- Python 3.12.4
- Django 5.2.4
- PostgreSQL 16
- Bootstrap 5
- API pública: [https://rickandmortyapi.com](https://rickandmortyapi.com)

---

## 📦 Instalación paso a paso

### 1. Clona el repositorio

```bash
git clone https://github.com/FernandoGo21/progressa_test.git
cd .\progressa_test\
```
### 2. Crear y activar el entorno virtual
```bash
python -m venv venv
venv\Scripts\activate
```
### 3. Instala las dependencias
Nos ubicamos en la raiz del proyecto es decir en progressa_test/ y ejecutamos el siguiente comando
```bash
pip install -r requirements.txt
```

### 4. Creación base de datos
En su administrador de postgreSQL cree la siguiente base de datos:
```bash
createdb progressadb
```
### 5. Configuración credenciales base de datos
En progressa_test/settings.py, configura tu base de datos en la sección DATABASES, por defecto viene con los siguientes ajustes:
```python
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'progressadb', 
        'USER': 'postgres', ##Aqui va el usuario que usa al momento de acceder a postgreSQL
        'PASSWORD': 'root', ##Aqui va la contraseña de postgreSQL
        'HOST': 'localhost',
        'PORT': '5432',
    }
}
```

### 6. Despues de esto, ejecuta la migraciones, y ejecuta el script de sql para el poblado de datos
```bash
python manage.py makemigrations
python manage.py migrate
##Para ejecutar el script de sql es necesario ubicarse sobre la carpeta en la cual esta el script la cual es .\progressa_test\sctipts\init_db.sql
cd scripts/
psql -U postgres -d progressadb -f init_db.sql
```

### 7. Ejecuta el servidor
```bash
cd ..
python manage.py runserver
```

### 8. Usuario para pruebas
username = demo
password = demo1234