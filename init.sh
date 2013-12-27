#!/usr/bin/env bash

git submodule update --init

if which realpath > /dev/null 2>&1; then
    SRCDIR=$(realpath $0)
else
    SRCDIR=$(readlink -f $0)
fi

for x in ${SRCDIR}/configs/*; do
    FILE=$(basename $x)
    rm -rf ${HOME}/.${FILE}
    cp -r ${FILE} ${HOME}/.${FILE}
done

mkdir -p ${HOME}/bin/
cp -f ${SRCDIR}/scripts/* ${HOME}/bin/

