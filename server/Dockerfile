FROM node:12

# Create app directory
WORKDIR /usr/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

RUN npm run build
COPY .env.development ./dist/
WORKDIR ./dist

ENV NODE_ENV=development
EXPOSE 5000
CMD node src/index.js