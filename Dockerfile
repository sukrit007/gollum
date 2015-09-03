FROM totem/python-base:3.4-trusty-b4

ADD requirements.txt /opt/gollum/
RUN /bin/bash -c "pip3 install -r /opt/gollum/requirements.txt"

ADD . /opt/gollum
WORKDIR /opt/gollum

EXPOSE 8080
CMD ["server.py"]
