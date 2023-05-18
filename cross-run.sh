#!/bin/bash

source .env

# Run/Test Targets
for target in "${TARGETS[@]}"
do
    echo "Running target: $target"
    echo "-----------------------------------"
    cross run --target "$target"
    echo ""
done
