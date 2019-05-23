FROM ruby:2.3.0

ENV PACKAGES build-essential libpq-dev sqlite3 nodejs

MAINTAINER ["Yoshiko Harwyn", "school21"]

RUN apt-get update -y \
	&& apt-get install -y $PACKAGES

ONBUILD WORKDIR /opt/app

ONBUILD ADD rails-4.20-blog /opt/app

ONBUILD EXPOSE 3000

ONBUILD RUN bundle install && rake db:migrate && rake db:seed


##### ADD failed: Forbidden path outside the build context: ../../../../rails-4.20-blog ()
# git clone https://github.com/IBM-Cloud/rails-4.20-blog.git
# docker build -t ft-rails:on-build .
# docker build .
# docker run -it --rm -p 3000:3000 <image id>

