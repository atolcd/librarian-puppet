FROM ruby:2.5-alpine

RUN gem install puppet -v 5.5.0 && \
    gem install librarian-puppet -v 3.0.0

VOLUME /puppet
WORKDIR /puppet
ENV HOME /puppet

ENTRYPOINT ["librarian-puppet"]

CMD ["version"]