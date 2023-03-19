python -m venv ./venv &&\
    ./venv/bin/pip install --upgrade pip &&\
    ./venv/bin/pip install --trusted-host pypi.python.org -r requirements.txt &&\
    ./venv/bin/python -m flask run --host=0.0.0.0 --port=8001 --debug
