#!/bin/bash

run_codereview.sh repo_slug $1

if [ ! -f "report.json" ]; then
    echo "code checker error"
    exit 1
fi

count=$(cat report.json | jq '.count')

if [ "$count" -gt "0" ]; then
    for ((i=0; i<$count; i++))
    do
        file=$(cat report.json | jq -r '.issues['$i'].file')
        line=$(cat report.json | jq -r '.issues['$i'].line')
        message=$(cat report.json | jq -r '.issues['$i'].message')

        echo "::warning file=$file,line=$line::$message"
    done
    rm report.json
    exit 1
fi
