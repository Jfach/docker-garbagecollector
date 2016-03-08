FROM ubuntu

RUN apt-get update

RUN apt-get install -y git python-dev python-pip libldap2-dev libsasl2-dev libssl-dev

RUN git clone https://github.com/Jfach/garbagecollector.git

RUN pip install -r /garbagecollector/requirements.txt

COPY configuration/ad_seed.txt garbagecollector/scripts/seeds/ad_seed.txt

COPY configuration/net_seed.txt garbagecollector/scripts/seeds/net_seed.txt

COPY configuration/config.yaml garbagecollector/scripts/resources/config.yaml
