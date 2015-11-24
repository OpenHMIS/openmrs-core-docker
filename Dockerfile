FROM tomcat:7-jre7

ENV OPENMRS_HOME /var/lib/OpenMRS
ENV OPENMRS_PLATFORM_VERSION="1.9.9"
ENV OPENMRS_VERSION="1.0"

RUN curl -L http://sourceforge.net/projects/openmrs/files/releases/OpenMRS_Platform_1.9.9/openmrs.war/download \
       -o ${CATALINA_HOME}/webapps/openmrs.war; \
  mkdir ${OPENMRS_HOME}

EXPOSE 8080

CMD ["catalina.sh", "run"]
