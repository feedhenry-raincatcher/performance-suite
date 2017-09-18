#! /bin/bash
set -o errexit

. $NVM_DIR/nvm.sh
node --version

cd $RAINCATCHER_CORE_HOME/demo/server/src
node index.js $@
exit $?