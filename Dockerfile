ARG MAVEN_VERSION
ARG JAVA_VERSION
ARG JAVA_VARIANT

FROM maven:${MAVEN_VERSION}-jdk-${JAVA_VERSION}${JAVA_VARIANT}}
LABEL maintainer="Michele Mondelli <michele.mondelli@bmeme.com>"

RUN apt update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ARG BUILD_DATE

LABEL maintainer="Michele Mondelli <michele.mondelli@bmeme.com>" \
      org.label-schema.schema-version="1.0" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="bmeme/java-dev" \
      org.label-schema.version="${MAVEN_VERSION}-jdk-${JAVA_VERSION}${JAVA_VARIANT}" \
      org.label-schema.description="Java development image" \
      org.label-schema.url="https://www.bmeme.com/"
