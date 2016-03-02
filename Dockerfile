FROM python:2

RUN git clone https://github.com/Jfach/garbagecollector.git

RUN pip install -r /garbagecollector/requirements.txt



