#!/bin/bash

set -e

# handle argument
EXCLUDE=$1
echo "EXCLUDE=$EXCLUDE"

# execute clang-tidy
source /run_clang_tidy.sh $EXCLUDE
