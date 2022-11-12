FROM node:19-bullseye-slim

LABEL maintainer="Florian Zapf"
LABEL description="Container for JavaScript build and compile processes based on Node.js and NPM"

RUN npm install -y -g \
    @angular/cli \
    create-react-app \
    typescript \
    sass

COPY .bashrc ~/.bashrc
 
WORKDIR /home/app

CMD [ "tail -f /home/app" ]
