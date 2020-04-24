FROM ruby:2.4.3

ENV WORKDIR /app

WORKDIR ${WORKDIR}

RUN gem install geminabox \
 && git clone https://github.com/qrush/hola . \
 && gem build hola.gemspec \
 && gem inabox -g http://gems.d.c0.lt:6789 hola-0.0.1.gem
