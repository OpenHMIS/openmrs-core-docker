FROM tomcat:7-jre7

ENV OPENMRS_HOME /var/lib/OpenMRS
ENV OPENMRS_PLATFORM_VERSION="1.9.9"
ENV OPENMRS_VERSION="1.0"

ADD openmrs-runtime.properties ${CATALINA_HOME}/openmrs-runtime.properties
# ADD run.sh /root/run.sh

RUN curl -L http://sourceforge.net/projects/openmrs/files/releases/OpenMRS_Platform_1.9.9/openmrs.war/download \
       -o ${CATALINA_HOME}/webapps/openmrs.war; \
  mkdir ${OPENMRS_HOME}; \
  chown tomcat7:tomcat7 ${CATALINA_HOME}/openmrs-runtime.properties ${OPENMRS_HOME}
#  chmod +x /root/run.sh

EXPOSE 8080

CMD ["catalina.sh", "run"]
