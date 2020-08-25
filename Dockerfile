FROM nvcr.io/nvidia/pytorch:19.10-py3
LABEL maintainer="gsganden@gmail.com"

RUN pip install -U pip

WORKDIR /fastbook/
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY requirements-dev.txt .
RUN pip install -r requirements-dev.txt

COPY . .
