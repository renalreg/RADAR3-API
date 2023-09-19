FROM python:3.11

WORKDIR /app

RUN python -m pip install -U pip wheel && pip install poetry

COPY . ./

RUN poetry install --only main --no-interaction
