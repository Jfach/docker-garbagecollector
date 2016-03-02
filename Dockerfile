FROM ubuntu

RUN apt-get update

RUN apt-get install -y git python-dev python-pip libldap2-dev libsasl2-dev libssl-dev

RUN git clone https://github.com/Jfach/garbagecollector.git

RUN pip install -r /garbagecollector/requirements.txt
