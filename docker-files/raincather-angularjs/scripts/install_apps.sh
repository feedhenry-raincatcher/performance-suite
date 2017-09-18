#! /bin/bash

# install node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
. $NVM_DIR/nvm.sh
nvm install $NODE_VERSION
nvm alias default $NODE_VERSION
nvm use default

bash
node --version
. $NVM_DIR/nvm.sh
npm install -g typescript@^2.5.0
git clone https://github.com/feedhenry-raincatcher/raincatcher-angularjs.git
cd $RAINCATCHER_ANGULARJS_HOME
npm install
npm run bootstrap
cd $RAINCATCHER_CORE_HOME
npm install
npm run bootstrap

# compile demo server to node
npm run build
cd demo/server
tsc