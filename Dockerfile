FROM node:7
RUN apt-get update; apt-get install redis-server
USER node
WORKDIR /home/node
COPY wotcher wotcher
USER root
CMD service redis-server start; su '/home/node/wotcher/bin/hubot -a discourse-adapter' node
