#!/bin/sh

usage()
{
    echo 'usage: config.sh [options]'
    echo '-h --help            print usage'
    echo '--prefix=<prefix>    install prefix'
    echo '--build-test         build test programmes'
    exit 1
}

opt_prefix='/usr/local'
opt_build_test='no'

options=`getopt -o h -l \
help,\
prefix:,\
build-test\
 -- "$@"`
eval set -- "$options"

while [ $# -gt 0 ]
do
    case "$1" in
    -h|--help) usage;;
    --prefix) opt_prefix=$2; shift;;
    --build-test) opt_build_test=yes;;
    --) shift; break;;
    *) usage;;
    esac
    shift
done

# check compiler
which g++ >/dev/null 2>&1
if [ $? -ne 0 ]
then
    echo 'can not find g++'
    exit 1
fi

# check make
which make >/dev/null 2>&1
if [ $? -ne 0 ]
then
    echo 'can not find make'
    exit 1
fi

# output
echo "BR_INSTALL_PREFIX = $opt_prefix" >config.mak
echo "BR_BUILD_TEST = $opt_build_test" >>config.mak
echo "BR_CORE_CPP_FLAG = $core_cpp_flag" >>config.mak
