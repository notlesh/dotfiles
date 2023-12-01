#!/bin/bash

# A simple script to remove artifact / build dependency directories

# Directories to manually delete
rm -rf ./msl/moonbeam/tests/node_modules
rm -rf ./msl/private/moonbeam-private/test/node_modules

# Use "cargo-clean-all" (e.g. `cargo install cargo-clean-all`) to more intelligently
# clean directories
# 
# see https://crates.io/crates/cargo-clean-all
cargo clean-all -y --keep-days 7 --keep-size 10MB --ignore ~/dev/wc_manager ~/dev
