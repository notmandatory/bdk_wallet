#!/bin/bash

set -x
set -euo pipefail

# Pin dependencies for MSRV

# To pin deps, switch toolchain to MSRV and execute the below updates

# cargo clean
# rustup override set 1.63.0

cargo update -p once_cell --precise "1.20.3"
cargo update -p syn --precise "2.0.106"
cargo update -p quote --precise "1.0.41"
