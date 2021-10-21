FROM python:3.9

ENV PYTHONUNBUFFERED=1

WORKDIR /django

RUN pip3 install pipenv

COPY Pipfile Pipfile

RUN pipenv install

RUN pipenv install --system --deploy
