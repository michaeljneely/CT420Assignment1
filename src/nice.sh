#!/bin/bash
DIRNAME=$1
SCRIPT=$2
shift
shift
mkdir -p csvout/${DIRNAME}/niceruns
for i in $(seq -20 19);
do
    nice -n ${i} ./${SCRIPT} "$@" > csvout/${DIRNAME}/niceruns/nicerun${i}.csv &
done