FROM phedoreanu/archlinux-oracle-jdk

MAINTAINER Adrian Fedoreanu <adrian.fedoreanu@gmail.com>

RUN curl -O http://downloads.typesafe.com/typesafe-activator/1.3.4/typesafe-activator-1.3.4.zip
RUN unzip -qq typesafe-activator-1.3.4 \ 
	&& rm typesafe-activator-1.3.4.zip \
	&& chmod a+x /activator-1.3.4/activator

ENV PATH $PATH:/activator-1.3.4

EXPOSE 9000 8888
RUN mkdir -p /app
WORKDIR /app

CMD ["activator", "run"]
