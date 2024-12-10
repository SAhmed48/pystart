FROM python:3.12

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

RUN pip install uv

COPY ./app /code/app

# Define a volume
VOLUME /data

CMD ["fastapi", "run", "app/main.py", "--port", "80"]