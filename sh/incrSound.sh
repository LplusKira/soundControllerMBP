#!/bin/bash
if [ "$#" -ne 0 ]; then
    echo "[err] not exactly one arg! usage: bash $0"
    exit 1
fi

# adjust output volume according to the 1st arg
# ref: 
outVolIndx=`osascript -e "set ovol to output volume of (get volume settings)"` 
let increment=1
let adjustedOutVolIndx=$(($outVolIndx))+increment
osascript -e "set volume output volume $adjustedOutVolIndx"

## XXX vv soundmeter doesnt support (thus we discard the following parsing part): soundmeter -t +600 -a exec -e "~/QQRscripts/sendMessage.sh 600" -t -200 -a exec -e "~/QQRscripts/sendMessage.sh 200"
## ref: https://stackoverflow.com/a/4137349
## "... check whether the variable, evaluated in arithmetic context, is equal to itself"
#if [[ $((${1})) != ${1} ]]; then
#    echo "[err] Usage: bash $0 SOMENUMBER"
#    exit 1
#fi

