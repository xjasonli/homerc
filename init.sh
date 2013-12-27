#!/usr/bin/env bash

if which realpath > /dev/null 2>&1; then
    SRCDIR=$(dirname $(realpath $0))
else
    SRCDIR=$(dirname $(readlink -f $0))
fi

pushd ${SRCDIR} >/dev/null
git submodule update --init
popd >/dev/null

for x in ${SRCDIR}/configs/*; do
    FILE=$(basename $x)
    rm -rf ${HOME}/.${FILE}
    cp -r ${x} ${HOME}/.${FILE}
done

mkdir -p ${HOME}/bin/
cp -f ${SRCDIR}/scripts/* ${HOME}/bin/

