#!/bin/bash
#==========================
# bash - find path to script
#==========================
abspath=$(cd ${0%/*} && echo $PWD/${0##*/})
thisdir=`dirname $abspath`

${thisdir}/make_schema.pl
${thisdir}/make_schema.pl answers TimeStamp