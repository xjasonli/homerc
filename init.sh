#!/usr/bin/env bash

UNAME=$(uname -s)

if [ $UNAME = Linux ]; then
    SRCDIR=$(dirname "$(readlink -f "$0")")
elif [ $UNAME = FreeBSD ]; then
    SRCDIR=$(dirname "$(realpath "$0")")
elif [ $UNAME = Darwin ]; then
    SRCDIR=$(cd "$(dirname "$0")"; pwd)
else
    echo "Unknown platform"
    exit 1
fi

cd ${SRCDIR}
git submodule update --init

for x in ${SRCDIR}/configs/*; do
    FILE=$(basename $x)
    rm -rf ${HOME}/.${FILE}
    echo "Copying $x -> ${HOME}/.${FILE}"
    cp -r $x ${HOME}/.${FILE}
done

mkdir -p ${HOME}/bin/
for x in ${SRCDIR}/scripts/*; do
    FILE=$(basename $x)
    echo "Copying $x -> ${HOME}/bin/${FILE}"
    cp -f $x ${HOME}/bin/
done

