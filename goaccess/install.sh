#! /bin/bash

ScriptDir=$(dirname "$0")
ProjectDir=$(cd $ScriptDir/.. && pwd)

cp -arf $ProjectDir/goaccess/startgoaccess.sh $ProjectDir/bin
