#!/bin/bash
DIRNAME=$1
RUNS=$2
SCRIPT=$3
shift
shift
shift
mkdir -p csvout/${DIRNAME}/${RUNS}runs
for i in $(seq 1 $RUNS);
do
    ./${SCRIPT} "$@" > csvout/${DIRNAME}/${RUNS}runs/run${i}.csv &
done
