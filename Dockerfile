FROM python:3.9-alpine

RUN mkdir /code
WORKDIR /code

COPY . /code

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT [ "python", "src/app.py"]
