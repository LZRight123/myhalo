# 第一句必需是from. 继承镜像 指定基础镜像
FROM openjdk:11

WORKDIR /usr/local/src

COPY ./halo.jar ./

EXPOSE 8090
CMD [ "java", "-jar", "halo.jar" ]