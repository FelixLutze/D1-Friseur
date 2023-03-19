FROM python:3-alpine

WORKDIR /app

COPY ./app /app

RUN apk add nodejs npm


RUN python -m venv ./venv &&\
    ./venv/bin/pip install --upgrade pip &&\
    ./venv/bin/pip install --trusted-host pypi.python.org -r requirements.txt

RUN npm ci

EXPOSE 8001

CMD ["./venv/bin/python", "-m",  "flask", "run", "--host=0.0.0.0", "--port=8001"]
