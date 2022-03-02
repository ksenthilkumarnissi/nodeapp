FROM node
RUN apt-get update && apt-get -y install sudo
RUN apt-get install curl
RUN apt-get install net-tools
RUN apt-get -y install --reinstall systemd
RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo
USER root
WORKDIR /usr/src/app
COPY package*.json ./
COPY cmd.sh ./
RUN npm install
COPY . .
EXPOSE 4000
CMD ["node", "index.js"]
SHELL ["sh"]
RUN cmd.sh


