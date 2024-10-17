
FROM python:3.11

RUN pip install django
RUN pip install pylint

# WORKDIR /app

COPY . .

#RUN pylint /app

EXPOSE 12000

VOLUME [ "/tmp" ]

CMD ["sh", "-c", "python manage.py migrate && python manage.py runserver 0.0.0.0:12000"]
