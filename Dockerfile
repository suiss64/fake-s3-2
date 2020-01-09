FROM ruby:alpine
MAINTAINER Kris Williams <kris.williams@gliffy.com>

ADD Gemfile /
ADD Gemfile.lock /
##perso
RUN apk add install gcc libcurl4-openssl-dev libxml2-dev -y
RUN bundle update
#
RUN bundle install

EXPOSE 4569

WORKDIR /fakes3_root

ENTRYPOINT ["bundle", "exec"]
CMD ["fakes3", "-r",  "/fakes3_root", "-p",  "4569"]
