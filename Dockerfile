FROM node:18.4.0-alpine3.15 AS build-stage
COPY . /app
WORKDIR /app
RUN yarn install
RUN yarn build
EXPOSE 3000
CMD yarn run preview --host 0.0.0.0
