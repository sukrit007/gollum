FROM totem/python-base:2.7-trusty-b3

ADD requirements.txt /opt/gollum/
RUN /bin/bash -c "pip install -r /opt/gollum/requirements.txt"

ADD . /opt/gollum
WORKDIR /opt/gollum

EXPOSE 8080
CMD ["server.py"]
