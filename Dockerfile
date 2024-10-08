FROM --platform=linux/x86_64 quay.io/rhn_support_abaral1/eap:7.4.14

MAINTAINER "Raghuram Banda" "rbanda@redhat.com"

COPY target/helloworld.war $JBOSS_HOME/standalone/deployments/

USER root

RUN chown jboss:jboss $JBOSS_HOME/standalone/deployments/helloworld.war

USER jboss
