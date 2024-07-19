#!/usr/bin/env bash

set -ex

ROOT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
TEMP_DIR=`mktemp -d`
CWD=`pwd`

cd $TEMP_DIR
cp -r "$ROOT_DIR/custom_components/smarter_thermostat" .
#cd goldair_climate
rm -rf __pycache__ */__pycache__
zip -r ha-smarter-thermostat * .translations
cp ha-smarter-thermostat.zip "$CWD"
cd "$CWD"
rm -rf $TEMP_DIR