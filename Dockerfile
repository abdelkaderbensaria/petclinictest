FROM jboss/wildfly
 COPY target/spring-petclinic-1.5.2.war /opt/jboss/wildfly/standalone/deployments/

export DISPLAY=:0.0
