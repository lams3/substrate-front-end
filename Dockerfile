# syntax=docker/dockerfile:1
FROM node

RUN yarn set version stable

WORKDIR /substrate-front-end
COPY . .
RUN yarn install

CMD ["yarn", "start"]
