# syntax=docker/dockerfile:1

FROM node:20-alpine AS base 

RUN apk add --update --no-cache \
  bash \
  file \
  git 

WORKDIR /artifact

FROM base AS builder

RUN npx --yes degit maizzle/maizzle . -f
RUN npm install

FROM base AS final

COPY --from=builder /artifact/node_modules /artifact/node_modules
COPY --from=maizzle-src package.json package-lock.json ./

RUN npm install

COPY --from=maizzle-src . . 

COPY ./app/views/ /artifact/app/views/


