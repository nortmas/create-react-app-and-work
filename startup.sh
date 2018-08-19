#!/bin/sh
# docker build -t react-app-img .
# docker run -d --name react-app-cont -v ./:/project react-app-img

if [ -z "$(ls -A /project/$@)" ]; then
    /usr/local/bin/create-react-app $@ && cd /project/$@ && /usr/local/bin/npm start
else
    cd /project/$@ && /usr/local/bin/npm start
fi