FROM node:12.18.2

WORKDIR /usr/src/app

COPY package.json ./

RUN yarn install

RUN yarn global add pm2

RUN yarn build

COPY . .

EXPOSE 5000

CMD ["pm2-runtime", "src/index.js"]