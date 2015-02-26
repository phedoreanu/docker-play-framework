# Base image
FROM library/java

WORKDIR {{work_dir}}

# Update packages
RUN apt-get update -y && apt-get upgrade -y

# Install unzip
RUN apt-get install -y zip apt-utils

# Add Play.zip & unzip
RUN curl -s -O http://downloads.typesafe.com/{{play_exec}}/{{play_version}}/{{play}}.zip; unzip -qq {{play}}

# Add play to PATH
ENV PATH $PATH:{{work_dir}}/{{play}}

