## build stage 
FROM node:alpine as build-stage

# make the 'app' folder the current working directory
WORKDIR /app

# copy both 'package.json and 'package-lock.json'
COPY package*.json ./

# install project dependencies
RUN npm install

# there is a gazzilion vulnerabilities in npm so this fixes at least some of them
#RUN npm audit fix

# copy project files and folders to the current working dir (should be '/app')
COPY . .

RUN npx sapper export

# production stage
FROM flashspys/nginx-static as production-stage
RUN apk update && apk upgrade
COPY --from=build-stage /app/__sapper__/export /static
EXPOSE 80
