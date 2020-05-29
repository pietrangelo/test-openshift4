FROM entando/eap-imagick-okd:entando-portal
COPY --chown=185:0 artifacts/unica.war /opt/eap/standalone/deployments/
COPY --chown=185:0 ./resources/ /opt/eap/modules/system/layers/openshift/
COPY --chown=185:0 configuration/standalone-openshift.xml /opt/eap/standalone/configuration/standalone-openshift.xml