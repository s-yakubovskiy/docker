FROM ruby:latest

ENV PACKAGES=build-essential libpq-dev sqlite3 nodejs

MAINTAINER ["Yoshiko Harwyn", "school21"]

RUN apt-get update -y \
	&& apt-get install -y \
	$PACKAGES

ONBUILD COPY ruby-rails-sample /opt/app

ONBUILD WORKDIR /opt/app

ONBUILD EXPOSE 3000

ONBUILD RUN bundle install

ONBUILD RUN rake db:migrate

ONBUILD RUN rake db:seed