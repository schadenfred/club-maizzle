# syntax=docker/dockerfile:1

FROM node:20-alpine AS base 

RUN apk add --update --no-cache \
  bash \
  file \
  git 

WORKDIR /artifact

FROM base AS builder

RUN npx --yes degit maizzle/maizzle . -f

COPY . .

RUN npm install

FROM base AS final

COPY --from=builder /artifact/ /artifact/

COPY package.json .
COPY package-lock.json .

RUN npm install

COPY . .
