FROM node:20

WORKDIR /monitorss

RUN apt-get update && apt-get install -y git

RUN git clone --recurse-submodules https://github.com/synzen/MonitoRSS.git

WORKDIR /monitorss/MonitoRSS/services/feed

RUN npm install

CMD ["npm", "run", "start"]
