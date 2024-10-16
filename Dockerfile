
FROM python:3.11

RUN pip install django
RUN pip install pylint

WORKDIR /app

COPY . .

#RUN pylint /app

EXPOSE 12000

CMD ["sh", "-c", "python cool_counters/manage.py migrate && python cool_counters/manage.py runserver 0.0.0.0:12000"]
