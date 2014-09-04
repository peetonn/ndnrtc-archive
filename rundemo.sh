#!/bin/sh

CURDIR="$( cd "$( dirname "$0}" )" && pwd )"
RESDIR="${CURDIR}/."
LIBDIR="${CURDIR}/."
LIBNAME="libndnrtc.0.dylib"
CFGNAME="ndnrtc.cfg"
RUNDIR="."
APPNAME="ndnrtc-demo"

assert_dir_access() { 
	fail=0
    (cd ${1:?pathname expected}) || fail=1
    
    if [ "$fail" -eq "1" ]; then
    	echo ${2}
    	exit
    fi
}

assert_dir_access $RESDIR "    Can't find resources folder"
assert_dir_access $LIBDIR "    Please, run make && make ndnrtc-demo first"

PARAMSPATH="$(cd $RESDIR && pwd)/${CFGNAME}"
LIBPATH="$(cd $LIBDIR && pwd)/${LIBNAME}"

echo "${CURDIR}/${RUNDIR}/${APPNAME} ${LIBPATH} ${PARAMSPATH} 2> /dev/null"
${CURDIR}/${RUNDIR}/${APPNAME} ${LIBPATH} ${PARAMSPATH} 2> /dev/null
