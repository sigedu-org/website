FROM jekyll/jekyll

COPY ./Gemfile ./

RUN bundle install

EXPOSE 4000

ENTRYPOINT jekyll serve
