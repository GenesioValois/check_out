FROM ruby:3.0.0

# Default directory
ENV INSTALL_PATH /app
RUN mkdir -p $INSTALL_PATH

# Install dependencies
RUN gem install bundler
WORKDIR /app

COPY . .
# Install project dependencies
RUN bundle install

# Run a shell
CMD ["/bin/sh"]
