FROM ruby:2.4.3

ENV DATADIR /data
ENV WORKDIR /app

RUN mkdir -p ${DATADIR}

WORKDIR ${WORKDIR}

COPY . ./
RUN bundle install

EXPOSE 9292

ENTRYPOINT ["rackup", "--host", "0.0.0.0"]
