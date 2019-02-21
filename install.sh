#! /bin/bash

ScriptDir=$(dirname "$0")
ProjectDir=$(cd "$ScriptDir" && pwd)

./goaccess/install.sh
./jzip/install.sh
