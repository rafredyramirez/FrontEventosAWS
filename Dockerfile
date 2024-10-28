FROM python:3.11-alpine

WORKDIR /code/

RUN mkdir ./my_project

COPY ./my_project/ /code/my_project
COPY ./.env /code/
COPY ./requirements.txt /code/

RUN mkdir ./my_project/static

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "./my_project/manage.py", "runserver", "0.0.0.0:80"]