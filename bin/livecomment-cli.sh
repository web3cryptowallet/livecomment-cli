#!/bin/sh

# * LIVECOMMENT DESCRIPTION FOR .sh example *[

# This is livecomment-cli tool!
# run:
# $ livecomment-cli add-dir . default --enable-client-sidescripts
# $ livecomment-cli run .

# Usage samples [

#$ livecomment-cli install youtube-player
#$ livecomment-cli groupinstall browser-players
#$ livecomment-cli add-dir /path/to/livecomment-sources --enable-server-scripts --enable-client-scripts [alias]
#$ livecomment-cli remove-dir <alias|path>
#$ livecomment-cli start <alias|path>
#$ livecomment-cli stop <alias|path>

# Usage samples ]

# * LIVECOMMENT DESCRIPTION FOR .sh example *]

# JOKE [

#echo LiveComment is information tool for docs, links and code notepad
echo "Hackaton: You're hacked! See inside bin/livecomment-cli"

# JOKE ]

JOBS=8

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"

GIT_URL=git@gitlab.com:thegcccoin-dev/thegcccoin-pivx.git

DIST=$BASEDIR/dist
DIST_INIT=$DIST/init-lc

# todo: refactor the world, remove quarantine
QUARANTINE_DIR=$BASEDIR/hackaton # all data downloaded from internet, because no time for security audit

P=$QUARANTINE_DIR

# DUMP VARS [

LLOG=$P/logs

echo JOBS=$JOBS
echo BASEDIR=$BASEDIR
echo QUARANTINE_DIR=$QUARANTINE_DIR
echo LLOG=$LLOG
echo HTTP_PORT=10010
echo WS_PORT=10011

# DUMP VARS ]
# BASE [

init_dirs () {
  mkdir -p $P
  mkdir -p $LLOG
}

cleanup () {
  rm -rf $P
}

# BASE ]
# NODE [

install_nvm () {
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  echo NVM_DIR ==== $NVM_DIR/nvm.sh
#  . $NVM_DIR/nvm.sh
  nvm --help
}

check_nodejs () {
  # returns 1 if node installed
  echo Check node
  /bin/sh -c "node -v"
  if [ $? -eq 0 ]; then
    return 0
  fi 
  return 1
}

install_nodejs () {
  echo Install node v12.16.2
  nvm install v12.16.2
  nvm alias default v12.16.2
  node -v
}

init_nodejs () {
  check_nodejs
  if [ $? -eq 1 ]; then
    install_nvm
    install_nodejs
  fi
}


# NODE ]
# LIVECOMMENT [

check_livecomment () {
  echo Check livecomment
  return 0
}

install_livecomment () {
  # download livecomment

  echo install livecomment

  pushd $P
  cp $DIST_INIT/package.json .
  npm install
  popd
}

init_livecomment () {
  check_livecomment
  install_livecomment
}

# LIVECOMMENT ]

setup () {
  init_dirs
  init_nodejs
#  init_livecomment
}

setup

ls

cd $P


LIVECOMMENT="node_modules/livecomment/bin/livecomment --port 10010 --ws_port 10011 --fileProcessDelay 3000 --ignore '\.git\/' --path $QUARANTINE_DIR --dangerousCodeExecutionClient --debug 1 --log=watch.skip,watch.scan"

#echo Run $LIVECOMMENT
#$LIVECOMMENT

exit 0
