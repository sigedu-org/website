FROM jekyll/jekyll

COPY ./Gemfile ./

RUN bundle install

EXPOSE 4000
EXPOSE 35729

ENTRYPOINT jekyll serve --livereload
