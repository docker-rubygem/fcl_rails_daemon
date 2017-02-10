FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.2.0

RUN gem install fcl_rails_daemon --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["console"]
CMD ["--help"]
