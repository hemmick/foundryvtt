FROM node:current-alpine

ENV FOUNDRY_PKG_DIR=/pkg
ENV FOUNDRY_DATA_DIR=/data
ENV UID=1000
ENV GUID=1000

# Change to foundry user
RUN deluser node
RUN adduser -u $UID -D foundry
USER foundry

# default foundry port
EXPOSE 30000
CMD ["node", "$FOUNDRY_PKG_DIR/resources/app/main.js", "--headless", "--dataPath=$FOUNDRY_DATA_DIR" ]
