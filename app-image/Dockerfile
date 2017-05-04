FROM ubuntu:14.04
MAINTAINER hamza zafar
RUN mkdir /home/code
RUN apt-get update \
    && apt-get install -y \
    python2.7 \ 
    curl \
    python-pip
WORKDIR /home/code
COPY main.py .
COPY requirements.txt .
RUN pip install -r requirements.txt
CMD ["python2", "main.py"]
