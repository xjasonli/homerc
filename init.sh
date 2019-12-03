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

chmod 700 ${SRCDIR}/home/ssh

for x in ${SRCDIR}/home/*; do
    FILE=$(basename $x)
    if [ -d $x ]; then
        x="$x/"
    fi
    echo "rsync -av $x ${HOME}/.${FILE}"
    rsync -a "$x" "${HOME}/.${FILE}"
done

