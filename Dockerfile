FROM node:latest
COPY . /app
WORKDIR /app

RUN yarn install
RUN yarn build
EXPOSE 3000
CMD node build/index.js
