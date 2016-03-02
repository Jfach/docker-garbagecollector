FROM python:2

ADD ftp://ftp.openldap.org/pub/OpenLDAP/openldap-release/openldap-2.4.44.tgz

RUN git clone https://github.com/Jfach/garbagecollector.git

RUN pip install -r /garbagecollector/requirements.txt



