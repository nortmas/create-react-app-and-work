#!/bin/sh
# If the application folder is empty run create-react-app, otherwise just start.
if [ -z "$(ls -A /project/$@)" ]; then
    /usr/local/bin/create-react-app $@ && cd /project/$@ && /usr/local/bin/yarn start
else
    cd /project/$@ && /usr/local/bin/npm start
fi