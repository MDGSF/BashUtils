#!/bin/bash

ScriptDir=$(dirname "$0")
ProjectDir=$(cd "$ScriptDir"; cd ..; pwd)

echo "sub1"
echo "sub1 ScriptDir = ${ScriptDir}"
echo "sub1 ProjectDir = ${ProjectDir}"

