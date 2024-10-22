# Usa una imagen oficial de Python como base
FROM python:3.10-slim

# Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia el archivo de requerimientos del proyecto
COPY requirements.txt .

# Instalar las dependencias especificadas en requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Crear el directorio para archivos estáticos
RUN mkdir -p /usr/src/app/static

# Copiar el resto del código del proyecto Django al contenedor
COPY . .

# Exponer el puerto que Django usará para servir la aplicación
EXPOSE 8000

# Ejecutar las migraciones para preparar la base de datos (si se usa)
RUN python manage.py migrate

# Ejecutar el servidor de desarrollo de Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]