FROM node:14@sha256:481a78885f7a83f86fcb3ac48dab9bede651851d1b250650c17645a988902728

WORKDIR /usr/src/app

COPY package.json .
RUN npm install 
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]