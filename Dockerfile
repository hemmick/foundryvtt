FROM node:current-alpine

# default foundry port
EXPOSE 30000
CMD ["node", "/pkg/resources/app/main.js", "--headless", "--dataPath=/data" ]
