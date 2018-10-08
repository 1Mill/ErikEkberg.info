FROM node:alpine

RUN apk update && apk add

RUN npm install -g yarn@1

RUN mkdir /app
WORKDIR /app

COPY package.json *yarn* ./
RUN yarn install

COPY . .
