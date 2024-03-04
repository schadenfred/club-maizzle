# syntax=docker/dockerfile:1

FROM ruby:3.2.2-alpine

RUN apk add --update --no-cache \
  build-base

RUN gem install mailcatcher --no-document \
  && apk del --rdepends --purge build-base
