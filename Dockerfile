FROM entando/eap-imagick-okd:entando-portal
COPY --chown=185:0 resources/unica.war /opt/eap/standalone/deployments/
COPY resources/standalone-openshift.xml /opt/eap/standalone/configuration/standalone-openshift.xml