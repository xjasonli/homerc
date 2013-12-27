#!/usr/bin/env bash

if which realpath > /dev/null 2>&1; then
    SRCDIR=$(dirname $(realpath $0))
else
    SRCDIR=$(dirname $(readlink -f $0))
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

