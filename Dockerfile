FROM java:8
VOLUME /tmp
ADD target/rocketmq-exporter-0.0.3-SNAPSHOT-exec.jar rocketmq-exporter.jar
RUN sh -c 'touch /rocketmq-exporter.jar'
EXPOSE 5557 
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /rocketmq-exporter.jar" ]
