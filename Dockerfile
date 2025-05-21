FROM node:20

WORKDIR /app

RUN apt-get update && apt-get install -y git

RUN git clone --recurse-submodules https://github.com/synzen/MonitoRSS.git

WORKDIR /app/MonitoRSS/services/bot

RUN npm install

CMD ["npm", "run", "start"]
