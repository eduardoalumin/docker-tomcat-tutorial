FROM tomcat:9.0.8-jre8-alpine

ADD cardif.sbi.war /usr/local/tomcat/webapps/

EXPOSE 80
CMD ["catalina.sh", "run"]