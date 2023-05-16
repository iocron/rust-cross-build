#!/bin/bash

# Build Targets
cross build --target x86_64-pc-windows-gnu --release
cross build --target aarch64-unknown-linux-gnu --release
# cross build --target x86_64-apple-darwin --build ## Not working, cc is not able to compile it
