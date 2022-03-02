FROM node
RUN apt-get update && apt-get -y install sudo
RUN apt-get install curl
RUN apt-get install net-tools
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER root
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 4000
CMD ["node", "index.js"]
CMD ["docker", "ps"]
CMD ["curl", "http://127.0.0.1:4000"]

