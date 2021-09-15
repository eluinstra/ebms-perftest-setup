#!/bin/bash
source $HOME/env.sh

export ebms_jdbc_url=jdbc:postgresql://localhost:5432/overheid
export ebms_jdbc_username=overheid
export ebms_jdbc_password=overheid
export https_verifyhostnames=false
export ebms_port=8088

cd $OVERHEID_HOME
rm overheid.log
nohup $JAVA_HOME/bin/java $JAVA_ARGS -cp ${HOME}/lib/${JDBCJAR}:${HOME}/lib/ebms-admin-${VERSION}.jar nl.clockwork.ebms.admin.StartEmbedded -soap -port 8000 $@ > overheid.log &
echo $! > overheid.pid
