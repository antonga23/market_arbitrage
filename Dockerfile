FROM python:3.7.6-alpine3.10
LABEL antonga <alathantonga@gmail.com>
RUN apk update \
    && apk add --virtual build-dependencies \
        build-base \
        gcc \
        wget \
        git \
	python3-dev \
	libffi-dev \
	openssl-dev \
    && apk add \
        bash
RUN pip3 install -r requirements.txt
COPY arbitrage_bot.py ./
COPY requirements.txt ./
CMD [ "python3", "./arbitrage_bot.py" ]
