#! /bin/bash

ScriptDir=$(dirname "$0")
ProjectDir=$(cd $ScriptDir/.. && pwd)

cp -arf $ProjectDir/jzip/jzip.sh $ProjectDir/bin
cp -arf $ProjectDir/jzip/junzip.sh $ProjectDir/bin
