FROM node:18.4.0-alpine3.15 AS build-stage
COPY . /app
WORKDIR /app
RUN yarn install
RUN yarn build

FROM node:18.4.0-alpine3.15 as prod-stage
COPY package.json yarn.lock .
RUN yarn install --prod
COPY --from=build-stage /app/build/ /build
EXPOSE 3000
CMD node build/index.js
