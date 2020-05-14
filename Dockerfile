FROM ubuntu 

# Need python 3.7+
RUN apt-get update && apt-get install --assume-yes python3.7 python3-venv python3-pip

# make python 3.7 the default
RUN ln -s /usr/bin/python3.7 /usr/bin/python

RUN pip3 install --no-cache-dir --upgrade pip

COPY requirements.txt /usr/local/python/

RUN python3 -m venv /usr/local/python/env && . /usr/local/python/env/bin/activate && \ 
  pip install --no-cache-dir -r /usr/local/python/requirements.txt 

ENTRYPOINT []
