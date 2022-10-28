#!/bin/bash

# Format code to official language style
cargo fmt

# Compile the program for WASM
cargo build --release --target wasm32-unknown-unknown

# Assemble the web files to bridge with WASM binary
wasm-bindgen target/wasm32-unknown-unknown/release/rusty-rogues.wasm --out-dir wasm --no-modules --no-typescript
