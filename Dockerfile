FROM node:19.2.0-alpine3.15 AS build-stage
WORKDIR /app
COPY . .
RUN yarn install
RUN yarn build

FROM nginx:1.25.2-alpine AS prod-stage
COPY --from=build-stage /app/build /usr/share/nginx/html
RUN sed -i -E '9i \        try_files $uri $uri/ $uri.html =404;' /etc/nginx/conf.d/default.conf
