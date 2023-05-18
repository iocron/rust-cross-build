#!/bin/bash

source .env

# Build Targets
for target in "${TARGETS[@]}"
do
    echo "Building target: $target"
    echo "-----------------------------------"
    cross build --target "$target" --release
    echo ""
done
