FROM python:3
ENV PYTHONBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
COPY . /code/
# python manage.py runserver 0.0.0.0:8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]