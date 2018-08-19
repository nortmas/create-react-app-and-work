#!/bin/sh
# docker build -t react-app-img .
# docker run -d --name react-app-cont -v ./:/project react-app-img
/usr/local/bin/create-react-app $@ && npm start