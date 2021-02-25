FROM continuumio/anaconda3
LABEL author="gang.tao@outlook.com"

RUN /opt/conda/bin/conda install jupyter -y --quiet
RUN mkdir /opt/notebooks
RUN mkdir /home/notebooks

WORKDIR /home/notebooks
COPY  ./requirements.txt /home/notebooks/requirements.txt

RUN pip install --upgrade pip
RUN pip install -r /home/notebooks/requirements.txt

COPY ./start.sh /
RUN chmod +x /start.sh

WORKDIR /
EXPOSE 8888

ENTRYPOINT ["/bin/sh","./start.sh"]