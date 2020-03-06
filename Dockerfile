FROM ruby:2.5.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /meuApp

WORKDIR /meuApp

ADD Gemfile /meuApp/Gemfile
ADD Gemfile.lock /meuApp/Gemfile.lock

RUN bundle install
ADD . /meuApp