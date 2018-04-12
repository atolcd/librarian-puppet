FROM ruby:2.5-alpine

RUN apk --no-cache --update add git

RUN gem install puppet -v 5.5.0 && \
    gem install librarian-puppet -v 3.0.0 && \
    gem install puppet-lint -v 2.3.5

VOLUME /puppet
WORKDIR /puppet
ENV HOME /puppet

ENTRYPOINT ["librarian-puppet"]

CMD ["version"]