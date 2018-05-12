# Using a compact OS
FROM node:9.11.1-slim

MAINTAINER YING WANG <864891814@qq.com>

# Create app directory
RUN mkdir -p /home/Service
WORKDIR /home/Service

# Bundle app source
COPY . /home/Service
RUN npm install

EXPOSE 3000

# 
CMD [ "npm", "start", "daemon off;"]
