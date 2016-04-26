 #!/usr/bin/env bash
set -x
PRESTO_VERSION=0.145

BIN=$HOME/bin
PRESTO_URL_PREFIX="https://repo1.maven.org/maven2/com/facebook/presto/presto-cli/$PRESTO_VERSION"
PRESTO_FILENAME="presto-cli-0.145-executable.jar"

cd $BIN
wget $PRESTO_URL_PREFIX/$PRESTO_FILENAME
mv $PRESTO_FILENAME presto
chmod +x presto
