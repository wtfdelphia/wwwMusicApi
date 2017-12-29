# Using a compact OS
FROM daocloud.io/library/node:6.11.3-slim

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
