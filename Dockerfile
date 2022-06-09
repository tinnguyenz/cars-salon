FROM ruby:3.1.2
RUN apt-get update -qq
ADD . /cars_api
WORKDIR /cars_api
RUN bundle install
EXPOSE 3000
CMD ["bash"]