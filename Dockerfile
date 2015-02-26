# Base image
FROM library/java

WORKDIR /opt

# Update packages
RUN apt-get update -y && apt-get upgrade -y

# Install unzip
RUN apt-get install -y zip apt-utils

# Add Play.zip & unzip
RUN curl -s -O http://downloads.typesafe.com/play/2.1.3/play-2.1.3.zip; unzip -qq play-2.1.3

# Add play to PATH
ENV PATH $PATH:/opt/play-2.1.3
