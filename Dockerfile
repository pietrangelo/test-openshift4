FROM entando/eap-imagick-okd:entando-portal
COPY --chown=185:0 resources/unica.war /opt/eap/standalone/deployments/
COPY --chown=185:0 resources/com /opt/eap/modules/system/layers/openshift/
COPY resources/standalone-openshift.xml /opt/eap/standalone/configuration/standalone-openshift.xml