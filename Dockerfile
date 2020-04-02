FROM ubuntu 

RUN apt-get update && apt-get install --assume-yes python3-venv \
    python3-pip

RUN pip3 install --no-cache-dir --upgrade pip

COPY requirements.txt /usr/local/python/

# install python
RUN python3 -m venv /usr/local/python/env && . /usr/local/python/env/bin/activate && \ 
  pip install --no-cache-dir -r /usr/local/python/requirements.txt 

ENTRYPOINT []
