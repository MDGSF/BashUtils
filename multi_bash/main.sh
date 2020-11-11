#!/bin/bash

ScriptDir=$(dirname "$0")
ProjectDir=$(cd "$ScriptDir" && pwd)

echo "main"
echo "main ScriptDir = ${ScriptDir}"
echo "main ProjectDir = ${ProjectDir}"

source "${ProjectDir}/cmd.sh"

source "${ProjectDir}/sub/sub1.sh"

echo "main"
echo "main ScriptDir = ${ScriptDir}"
echo "main ProjectDir = ${ProjectDir}"

