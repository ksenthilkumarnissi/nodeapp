FROM node
RUN apt-get update && apt-get -y install sudo
RUN apt-get install curl
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER root
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 4000
CMD ["node", "index.js"]
CMD ["docker", "ps"]
CMD ["curl", "127.0.0.1"]

