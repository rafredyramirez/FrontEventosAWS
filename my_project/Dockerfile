# Usa una imagen oficial de Python como base
# FROM python:3.10-slim
FROM python:3.11-alpine

# Establecer el directorio de trabajo en el contenedor
# WORKDIR /usr/src/app
WORKDIR /code/

RUN mkdir ./my_project

COPY ./my_project/ /code/my_project
COPY ./.env /code/
COPY ./requirements.txt /code/

RUN mkdir ./my_project/static

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "./my_project/manage.py", "runserver", "0.0.0.0:80"]

# # fredy

# # Copia el archivo de requerimientos del proyecto
# COPY requirements.txt .

# # Instalar las dependencias especificadas en requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt

# # Crear el directorio para archivos estáticos
# RUN mkdir -p /usr/src/app/static

# # Copiar el resto del código del proyecto Django al contenedor
# COPY . .

# # Exponer el puerto que Django usará para servir la aplicación
# EXPOSE 8000

# # Ejecutar las migraciones para preparar la base de datos (si se usa)
# RUN python manage.py migrate

# # Ejecutar el servidor de desarrollo de Django
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]