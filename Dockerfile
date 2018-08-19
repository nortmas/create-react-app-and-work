FROM node:7-alpine

RUN npm install -g create-react-app

RUN mkdir /project
WORKDIR /project

#ADD --chown=node:node startup.sh /startup.sh

RUN chmod +x /startup.sh

USER node

ENTRYPOINT ["/startup.sh"]