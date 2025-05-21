FROM node:20

WORKDIR /monitorss

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/synzen/MonitoRSS.git . && \
    npm install

COPY .env .env

CMD ["npm", "run", "start"]
