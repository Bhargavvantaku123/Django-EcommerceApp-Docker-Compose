FROM python:slim
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
CMD ["python3","manage.py","runserver","0.0.0.0:9001"]
