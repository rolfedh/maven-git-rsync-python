FROM maven:3.9-eclipse-temurin-17

ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en'

RUN apt-get update \
  && apt-get install -y rsync git --no-install-recommends \
  && rm -rf /var/lib/apt/lists/* \
  && git --version \
  && curl --version \ 
  && mvn --version \
  && rsync --version \
  && java --version
