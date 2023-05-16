#!/bin/bash

if [[ ! "$(command -v cargo)" ]]; then
    curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
fi

if [[ ! "$(command -v cross)" ]]; then
    cargo install cross
fi

if [[ ! -f "Cargo.toml" ]]; then
    cargo init --bin
fi

echo "Setup of cargo + cross (and project initialization) completed."
