FROM centos:7

# Labels
LABEL maintainer="feedhenry-raincatcher@redhat.com"
LABEL name="feedhenry/raincatcher"
LABEL version="1.0.0"

# Enviornment Variables
ENV RAINCATCHER_ANGULARJS_HOME /raincatcher-angularjs
ENV RAINCATCHER_CORE_HOME $RAINCATCHER_ANGULARJS_HOME/core
ENV SCRIPTS_FOLDER /scripts
ENV SERVER_PORT 8001
ENV PORTAL_PORT 9002
ENV MOBILE_PORT 9003
ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 6

RUN yum install -y git

# Install dependencies
COPY ./scripts/* $SCRIPTS_FOLDER/

# Start apps
RUN sh $SCRIPTS_FOLDER/install_apps.sh \
  && chmod +x $SCRIPTS_FOLDER/*.sh

EXPOSE $SERVER_PORT $PORTAL_PORT $MOBILE_PORT
ENTRYPOINT [ "/scripts/start_core.sh" ]