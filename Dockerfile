# 第一句必需是from. 继承镜像 指定基础镜像
FROM tomcat

WORKDIR /usr/local/tomcat
# RUN rm -rf ./webapps \
    # && mv ./webapps.dist ./webapps 

WORKDIR /usr/local/tomcat/webapps/lib
# RUN rm -rf * \
#     && echo '<h1>你好，docker</h1>' > /usr/local/tomcat/webapps/ROOT/index.html

COPY ./halo.jar ./
# COPY ./tensonflow-web-1.0-SNAPSHOT/* ./

EXPOSE 1024
CMD [ "java", "-jar", "halo.jar" ]