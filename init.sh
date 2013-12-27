#!/usr/bin/env bash

if which realpath > /dev/null 2>&1; then
    SRCDIR=$(dirname $(realpath $0))
else
    SRCDIR=$(dirname $(readlink -f $0))
fi

cd ${SRCDIR}
git submodule update --init

for x in configs/*; do
    FILE=$(basename $x)
    rm -rf ${HOME}/.${FILE}
    cp -r ${x} ${HOME}/.${FILE}
done

mkdir -p ${HOME}/bin/
cp -f scripts/* ${HOME}/bin/

