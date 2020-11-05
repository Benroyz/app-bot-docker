# app-bot-docker
Dockerfile used for the Discord bot that I run

# NOTES
Read this document before you do anything.

# How to use this Dockerfile
First, clone this reposity: https://github.com/oadpoaw/app-bot.git

Second, edit any changes in `.env`, `config.json` `/config/messages.json` & `application.json` to your liking. 
Third, if you don't have a Docker account, get it. Use your docker user and run this command:
```
sudo docker build -f Dockerfile --tag <yourusername>/app-bot .
```
And wait for the install. 

Once you're done, run the docker with this command:
```
sudo docker run <yourusername>/app-bot --detach
```

You should be good to go!
