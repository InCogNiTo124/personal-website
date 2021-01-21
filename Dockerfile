## build stage 
FROM node:lts-alpine as build-stage

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json and 'package-lock.json'
COPY package*.json ./

# install project dependencies
RUN npm install

# there is a gazzilion vulnerabilities in npm so this fixes at least some of them
RUN npm audit fix

# copy project files and folders to the current working dir (should be '/app')
COPY . .

RUN npx sapper export

# production stage
FROM node:10-alpine as production-stage
COPY --from=build-stage /app/__sapper__/export /app
#COPY --from=build-stage /app/msmetko.xyz.conf /etc/nginx/conf.d/
EXPOSE 5000
CMD ["npx", "serve", "-l", "5000", "/app"]

