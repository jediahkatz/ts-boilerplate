FROM node:13-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install

COPY . .

EXPOSE 5000

CMD ['ts-node', 'src/index.ts']