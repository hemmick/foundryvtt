FROM node:current-alpine

ENV FOUNDRY_PKG_DIR=/pkg
ENV FOUNDRY_DATA_DIR=/data

# default foundry port
EXPOSE 30000
CMD ["node", "$FOUNDRY_PKG_DIR/resources/app/main.js", "--headless", "--dataPath=$FOUNDRY_DATA_DIR" ]
