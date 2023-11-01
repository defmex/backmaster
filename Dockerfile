FROM node:16 as 

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install 

RUN npm install rimraf

COPY . .

RUN npm run build
