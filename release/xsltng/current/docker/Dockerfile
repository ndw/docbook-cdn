FROM ubuntu:18.04
MAINTAINER Norman Tovey-Walsh <ndw@nwalsh.com>

RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -y default-jre maven unzip

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt-get update
RUN apt-get install -y python3.8 python3-pip

RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 10

# Use Maven to install the packages that docbook-xslTNG depends on
RUN mvn org.apache.maven.plugins:maven-dependency-plugin:2.4:get \
        -Dartifact=net.sf.saxon:Saxon-HE:10.1
RUN mvn org.apache.maven.plugins:maven-dependency-plugin:2.4:get \
        -Dartifact=com.drewnoakes:metadata-extractor:2.14.0
RUN mvn org.apache.maven.plugins:maven-dependency-plugin:2.4:get \
        -Dartifact=org.relaxng:jing:20181222
RUN mvn org.apache.maven.plugins:maven-dependency-plugin:2.4:get \
        -Dartifact=org.xmlresolver:xmlresolver:1.0.8
RUN mvn org.apache.maven.plugins:maven-dependency-plugin:2.4:get \
        -Dartifact=com.nwalsh:sinclude:0.9.2
RUN mvn org.apache.maven.plugins:maven-dependency-plugin:2.4:get \
        -Dartifact=org.slf4j:slf4j-simple:1.7.25

ARG VERSION=1.2.0

WORKDIR /opt
ADD https://github.com/docbook/xslTNG/releases/download/${VERSION}/docbook-xslTNG-${VERSION}.zip .
RUN unzip docbook-xslTNG-${VERSION}.zip

WORKDIR docbook-xslTNG-${VERSION}

ENTRYPOINT ["bin/docbook"]
