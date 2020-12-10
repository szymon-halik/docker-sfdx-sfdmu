FROM node:alpine
RUN apk add --update --no-cache git openssh ca-certificates openssl curl
RUN npm install sfdx-cli --global 
RUN npm update --global sfdx-cli
RUN sfdx --version
RUN sudo apt-get install jq
RUN jq --version
RUN echo 'y' | sfdx plugins:install sfdmu
RUN sfdx plugins
USER node