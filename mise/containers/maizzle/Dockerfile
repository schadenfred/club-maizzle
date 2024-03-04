# syntax=docker/dockerfile:1

FROM node:20-alpine

RUN apk add --update --no-cache \
  bash \
  file \
  git 

COPY . .

WORKDIR /vendor/maizzle
