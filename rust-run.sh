#!/bin/bash

# Run/Test Targets
cross run --target aarch64-unknown-linux-gnu
cross run --target x86_64-pc-windows-gnu
# cross run --target x86_64-apple-darwin ## Not working, cc is not able to run it
