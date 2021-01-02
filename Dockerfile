#Use an existing docker image as base
FROM node:alpine

#Working directory
COPY ./package.json ./
WORKDIR /usr/app
COPY ./ ./
#Download and install a dependency
RUN npm install




#Tell the image what to do whet start as a container

CMD ["npm", "start"]