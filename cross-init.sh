#!/bin/bash

if [[ ! "$(command -v rustup)" ]]; then
    curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
    echo "setup of rust / rustup completed."
else
    echo "rust / rustup already installed, skip.."
fi

if [[ ! "$(command -v cross)" ]]; then
    cargo install cross
    echo "cargo cross installation completed."
else
    echo "cargo cross is already installed, skip.."
fi

if [[ ! -f "Cargo.toml" && ! -f "Cargo.lock" ]]; then
    cargo init --bin
    echo "cargo init completed."
else
    echo "cargo init already exists, skip.."
fi

if [[ ! -f ".env" ]]; then
    cp .env_example .env
fi
echo "Adjust your variables in the .env file for customization."
