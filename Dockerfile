FROM node:12.14.0-alpine3.11

USER node

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

ENTRYPOINT ["npm", "start"]