FROM node:20

WORKDIR /monitorss

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/synzen/MonitoRSS.git /tmp/monitorss && \
    cp -r /tmp/monitorss/* /monitorss && \
    rm -rf /tmp/monitorss && \
    npm install

COPY .env .env

CMD ["npm", "run", "start"]
