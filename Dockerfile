FROM tomcat:7-jre7

ADD openmrs-runtime.properties /var/lib/tomcat7/openmrs-runtime.properties
ADD run.sh /root/run.sh

RUN curl -L http://sourceforge.net/projects/openmrs/files/releases/OpenMRS_Platform_1.9.9/openmrs.war/download \
       -o /var/lib/tomcat7/webapps/openmrs.war; \
  mkdir /var/lib/OpenMRS; \
  chown tomcat7:tomcat7 /var/lib/tomcat7/openmrs-runtime.properties /var/lib/OpenMRS; \
  chmod +x /root/run.sh

EXPOSE 8080

CMD ["/root/run.sh"]
