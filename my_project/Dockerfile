FROM python:3.11-alpine

# Establecer el directorio de trabajo en el contenedor
WORKDIR /code/

# Copiar los archivos necesarios
COPY ./my_project/ /code/my_project/
COPY ./.env /code/
COPY ./requirements.txt /code/

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Crear un directorio para archivos estáticos
RUN mkdir -p ./my_project/static

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar el servidor
CMD ["python", "./my_project/manage.py", "runserver", "0.0.0.0:80"]