FROM ruby:2.4.3

ENV WORKDIR /app

WORKDIR ${WORKDIR}

COPY . ./
RUN bundle install

CMD ["bundle", "exec", "./app.rb"]
