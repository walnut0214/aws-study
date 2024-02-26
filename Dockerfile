FROM python:3.9-alpine

RUN apk --no-cache add curl

RUN mkdir /code
WORKDIR /code

COPY . /code

RUN pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT [ "python", "src/app.py"]
