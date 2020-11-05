#!/bin/bash
echo "Starting Docker container..."
cd /app-bot/
npm run reset-database # initialize database
npm run start # to start the bot
