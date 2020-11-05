#Let's get the OS
FROM ubuntu:20.04

#Get the update to install things needed
RUN apt-get update
RUN apt-get install wget -y
RUN apt-get install curl -y

#get Nodejs and npm
RUN apt install nodejs -y
RUN apt install npm -y
RUN npm cache clean -f 
RUN npm install -g n
RUN n stable
RUN apt-get install git -y

#Get Discord.js
RUN npm install discord.js

#clone the bot
RUN git clone https://github.com/oadpoaw/app-bot.git /app-bot/

#run npm install for the bot
WORKDIR /app-bot/
RUN npm install

#Now copy things, make sure that you've edited the files like config.json, application.json AND .env BEFORE building the Docker.
COPY .env /app-bot
COPY config.json /app-bot/
COPY config/application.json /app-bot/config/application.json
COPY config/messages.json /app-bot/config/messages.json

#Get the start-up script
COPY startup.sh ./startup.sh

#Let's get the permission to run the script
RUN chmod +x ./startup.sh

# Startup script
CMD ["./startup.sh"]