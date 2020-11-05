# app-bot-docker
Dockerfile used for the Discord bot that I run

# NOTES
Read this document before you do anything.

Keep in mind that this is my first dockerfile, so if I made any mistakes, let me know, note it and tell me how I can avoid it. I went through this and learned new things. I still intend to learn more things with Docker.

# How to use this Dockerfile
First, clone this reposity: https://github.com/oadpoaw/app-bot.git

Second, edit any changes in `.env`, `config.json` `/config/messages.json` & `application.json` to your liking. 

Third, if you don't have a Docker account, get it. Use your docker user and run this command:
```
sudo docker build -f Dockerfile --tag <yourusername>/app-bot .
```
And wait for the install. 

Once you're done, run the docker with this command:
```bash
sudo docker run --detach <yourusername>/app-bot
```

You should be good to go!
