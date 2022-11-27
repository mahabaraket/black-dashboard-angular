# base image
FROM node:14.20.1

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json
RUN npm install

COPY . /app
# start app
CMD ng serve --host 0.0.0.0
