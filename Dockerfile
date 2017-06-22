FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /projectsapi
WORKDIR /projectsapi

ADD Gemfile /projectsapi/Gemfile
ADD Gemfile.lock /projectsapi/Gemfile.lock

RUN bundle install
ADD . /projectsapi
