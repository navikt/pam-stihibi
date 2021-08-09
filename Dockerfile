FROM navikt/java:14
USER root
RUN apt-get update && apt-get install -y curl
USER apprunner
COPY scripts/init-kafka-env.sh /init-scripts/init-kafka-env.sh
COPY build/libs/stihibi-*-all.jar ./app.jar
ENV JAVA_OPTS="-Xms256m -Xmx1024m"
