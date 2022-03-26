FROM ruby:3.1.1-slim-bullseye

WORKDIR /myapp

RUN apt-get update && apt-get install -y --no-install-recommends \
  build-essential \
  curl \
  libsqlite3-dev

COPY Gemfile Gemfile.lock ./
RUN bundle install -j8

COPY . .