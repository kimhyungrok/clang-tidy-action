#!/bin/bash

set -e

# handle argument
EXCLUDE=$1
PRE_COMMAND=$2

echo "EXCLUDE=$EXCLUDE"
echo "PRE_COMMAND=$PRE_COMMAND"

# execute pre-command if exist
if [ ! -z "$PRE_COMMAND" ]; then
    /bin/bash -c "$PRE_COMMAND"
fi    

# execute clang-tidy
source /run_clang_tidy.sh $EXCLUDE
