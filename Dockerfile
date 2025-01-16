FROM java:8
MAINTAINER breeze
ADD target/rocketmq-exporter-0.0.2-SNAPSHOT-exec.jar rocketmq-exporter.jar
EXPOSE 5557
ENTRYPOINT ["java","-jar","rocketmq-exporter.jar"]
