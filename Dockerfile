FROM openjdk:8-jdk-alpine  # 使用官方的 openjdk:8 镜像作为基础镜像，这里使用了 Alpine 版本，体积较小
MAINTAINER breeze  # 维护者信息

# 将 target 目录下的 rocketmq-exporter-0.0.3-SNAPSHOT-exec.jar 文件添加到镜像中，并重命名为 rocketmq-exporter.jar
ADD target/rocketmq-exporter-0.0.3-SNAPSHOT-exec.jar /rocketmq-exporter.jar

EXPOSE 5557  # 暴露 5557 端口

# 设置容器启动时执行的命令，使用 java 命令运行 rocketmq-exporter.jar
ENTRYPOINT ["java","-jar","/rocketmq-exporter.jar"]
