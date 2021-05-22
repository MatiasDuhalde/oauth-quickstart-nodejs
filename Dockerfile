FROM node:current-alpine3.12

WORKDIR /usr/src/oauth-quickstart-nodejs

# Install
COPY ./index.js ./
COPY ./package.json ./
RUN yarn install

ENV CLIENT_ID=""
ENV CLIENT_SECRET=""
ENV SCOPE=""

EXPOSE 3000

ENTRYPOINT [ "yarn", "start" ]
