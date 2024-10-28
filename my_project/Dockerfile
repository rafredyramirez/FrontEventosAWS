FROM python:3.11-alpine

# Establecer el directorio de trabajo en el contenedor
WORKDIR /code/

# Copiar archivos necesarios
COPY my_project/manage.py /code/
COPY my_project/requirements.txt /code/
COPY my_project/.env /code/
COPY my_project/my_project/ /code/my_project/

# Instalar dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Crear un directorio para archivos estáticos si es necesario
RUN mkdir -p ./my_project/static

# Exponer el puerto 80
EXPOSE 80

# Comando para iniciar el servidor
CMD ["python", "./manage.py", "runserver", "0.0.0.0:80"]