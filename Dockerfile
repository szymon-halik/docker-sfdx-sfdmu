FROM node:alpine
RUN apk add --update --no-cache git openssh ca-certificates openssl curl jq
RUN npm install sfdx-cli --global 
RUN npm update --global sfdx-cli
RUN echo 'y' | sfdx plugins:install sfdmu
RUN sfdx --version
RUN sfdx plugins --core
USER node 