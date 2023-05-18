#!/bin/bash

if [[ ! "$(command -v rustup)" ]]; then
    printf "setup of rust / rustup..\n"
    curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
    printf "\nsetup of rust / rustup completed.\n"
else
    printf "rust / rustup already installed, skip..\n"
fi

if [[ ! "$(command -v cross)" ]]; then
    printf "cargo install cross..\n"
    cargo install cross
    printf "\ncargo cross installation completed.\n"
else
    printf "cargo cross is already installed, skip..\n"
fi

if [[ ! -f "Cargo.toml" && ! -f "Cargo.lock" ]]; then
    printf "cargo init..\n"
    cargo init --bin
    printf "\nAdding enchanced profiles in Cargo.toml: "
    printf "\n[profile.release]\nstrip = \"debuginfo\"\n" | tee -a Cargo.toml
    printf "\ncargo init completed.\n"
else
    printf "cargo init already exists, skip..\n"
fi

if [[ ! -f ".env" ]]; then
    cp .env_example .env
fi
printf "\nAdjust your variables in the .env file for customization.\n"
