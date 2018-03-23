# Base Image
FROM ruby:2.3.1

# Install Firefox:
RUN export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get install --no-install-recommends --no-install-suggests -y \
    firefox-esr \
  # Remove obsolete files:
  && apt-get clean \
  && rm -rf \
    /tmp/* \
    /usr/share/doc/* \
    /var/cache/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

# Install geckodriver:
RUN export BASE_URL=https://github.com/mozilla/geckodriver/releases/download \
  && export VERSION=$(curl -sL \
    https://api.github.com/repos/mozilla/geckodriver/releases/latest | \
    grep tag_name | cut -d '"' -f 4) \
  && curl -sL \
  $BASE_URL/$VERSION/geckodriver-$VERSION-linux64.tar.gz | tar -xz \
  && mv geckodriver /usr/local/bin/geckodriver

# Create a directory
RUN mkdir /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app/SHOPPING

# Install gems
RUN gem install cucumber --no-ri --no-rdoc \
    && gem install watir-webdriver --no-ri --no-rdoc

# Set up display
# RUN apt-get install xvfb
# RUN Xvfb :1 -screen 0 1600x1200x16 & \
#    && export DISPLAY=:1.0

# Install VIM
#RUN apt-get update \
#    && apt-get install apt-file \
#    && apt-get update \
#    && apt-get install vim
    