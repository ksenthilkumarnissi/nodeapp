FROM node
RUN apt-get update && apt-get -y install sudo
RUN apt-get install curl
RUN apt-get install net-tools
RUN apt-get -y install --reinstall systemd
RUN apt-get install ca-certificates curl gnupg lsb-release
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update
RUN apt-get install docker-ce docker-ce-cli containerd.io
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


