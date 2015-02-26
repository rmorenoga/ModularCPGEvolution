#!/bin/sh

dirname="/home/rodrigo/V-REP/Vrep0/."


appname=`basename $0 | sed s,\.sh$,,`


tmp="${dirname#?}"

if [ "${dirname%$tmp}" != "/" ]; then
	dirname=$PWD/$dirname
fi
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$dirname
export LD_LIBRARY_PATH
"$dirname/$appname" "$@"


