FROM node:19.1.0-alpine3.15 AS build-stage
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build

FROM nginx:1.23.2-alpine AS prod-stage
COPY --from=build-stage /app/build /usr/share/nginx/html
