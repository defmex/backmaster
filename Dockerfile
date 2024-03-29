FROM node:16 

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install 

RUN npm install rimraf

COPY . .

RUN npm run build

EXPOSE 3000
CMD [ "node", "dist/main" ]