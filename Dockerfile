
FROM node:18

WORKDIR /usr/src/app

COPY package*.json ./


RUN apt-get update 

RUN apt-get install -y git

RUN npm install

EXPOSE 8080

CMD [ "npm", "start" ]
