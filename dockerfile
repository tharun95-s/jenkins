FROM tomcat:9.0

LABEL maintainer="tharun"

RUN rm -rf /usr/local/tomcat/webapps/ROOT

COPY index.jsp /usr/local/tomcat/webapps/ROOT/index.jsp

EXPOSE 9090

CMD ["catalina.sh", "run"]