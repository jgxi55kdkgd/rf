#!/bin/bash

# Check if exactly one argument is passed
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <path-to-tests>"
    exit 1
fi

# Assign the first argument to a variable
TEST_PATH=$1

# Remove previous test results
rm -f ${TEST_PATH}/Results/*

# Run Robot Framework tests with Xvfb
xvfb-run robot -d ${TEST_PATH}/Results ${TEST_PATH}
