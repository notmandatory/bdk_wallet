# The Bitcoin Dev Kit

<div align="center">
  <h1>BDK Wallet</h1>

  <img src="./static/bdk.png" width="220" />

  <p>
    <strong>A modern, lightweight, descriptor-based wallet library written in Rust!</strong>
  </p>

  <p>
    <a href="https://crates.io/crates/bdk_wallet"><img alt="Crate Info" src="https://img.shields.io/crates/v/bdk_wallet.svg"/></a>
    <a href="https://github.com/bitcoindevkit/bdk/blob/master/LICENSE"><img alt="MIT or Apache-2.0 Licensed" src="https://img.shields.io/badge/license-MIT%2FApache--2.0-blue.svg"/></a>
    <a href="https://github.com/bitcoindevkit/bdk/actions?query=workflow%3ACI"><img alt="CI Status" src="https://github.com/bitcoindevkit/bdk/workflows/CI/badge.svg"></a>
    <a href="https://coveralls.io/github/bitcoindevkit/bdk?branch=master"><img src="https://coveralls.io/repos/github/bitcoindevkit/bdk/badge.svg?branch=master"/></a>
    <a href="https://docs.rs/bdk_wallet"><img alt="Wallet API Docs" src="https://img.shields.io/badge/docs.rs-bdk_wallet-green"/></a>
    <a href="https://blog.rust-lang.org/2022/08/11/Rust-1.63.0.html"><img alt="Rustc Version 1.63.0+" src="https://img.shields.io/badge/rustc-1.63.0%2B-lightgrey.svg"/></a>
    <a href="https://discord.gg/d7NkDKm"><img alt="Chat on Discord" src="https://img.shields.io/discord/753336465005608961?logo=discord"></a>
  </p>

  <h4>
    <a href="https://bitcoindevkit.org">Project Homepage</a>
    <span> | </span>
    <a href="https://docs.rs/bdk_wallet">Documentation</a>
  </h4>
</div>

## About

The `bdk_wallet` project aims to provide a well engineered and reviewed library for building Bitcoin based applications.
It is built upon the excellent [`rust-bitcoin`] and [`rust-miniscript`] crates.

## Architecture

There is currently only one crate in this repository:

[`bdk_wallet`](./crates/wallet): Contains the central high level `Wallet` type that is built from the low-level mechanisms provided by components it depends on.

Crates that `bdk_wallet` depends on are found in the [`bdk`](https://github.com/bitcoindevkit/bdk) repository:

- [`chain`](./crates/chain): Tools for storing and indexing chain data
- [`persist`](./crates/persist): Types that define data persistence of a BDK wallet
- [`file_store`](./crates/file_store): A (experimental) persistence backend for storing chain data in a single file.
- [`esplora`](./crates/esplora): Extends the [`esplora-client`] crate with methods to fetch chain data from an esplora HTTP server in the form that [`bdk_chain`] and `Wallet` can consume.
- [`electrum`](./crates/electrum): Extends the [`electrum-client`] crate with methods to fetch chain data from an electrum server in the form that [`bdk_chain`] and `Wallet` can consume.

Fully working examples of how to use these components are in `/example-crates`:
- [`example_wallet_electrum`](./example-crates/example_wallet_electrum): Uses the `Wallet` to sync and spend using Electrum.
- [`example_wallet_esplora_async`](./example-crates/example_wallet_esplora_async): Uses the `Wallet` to sync and spend using the Esplora asynchronous interface.
- [`example_wallet_esplora_blocking`](./example-crates/example_wallet_esplora_blocking): Uses the `Wallet` to sync and spend using the Esplora blocking interface.
- [`example_wallet_rpc`](./example-crates/example_wallet_rpc): Uses the `Wallet` to sync and spend using a bitcoin core full node and the RPC interface.

[`rust-miniscript`]: https://github.com/rust-bitcoin/rust-miniscript
[`rust-bitcoin`]: https://github.com/rust-bitcoin/rust-bitcoin
[`esplora-client`]: https://docs.rs/esplora-client/
[`electrum-client`]: https://docs.rs/electrum-client/
[`bdk_chain`]: https://docs.rs/bdk-chain/

## Minimum Supported Rust Version (MSRV)

The libraries in this repository maintains a MSRV of 1.63.0. 

## License

Licensed under either of

* Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or <https://www.apache.org/licenses/LICENSE-2.0>)
* MIT license ([LICENSE-MIT](LICENSE-MIT) or <https://opensource.org/licenses/MIT>)

at your option.

### Contribution

Unless you explicitly state otherwise, any contribution intentionally
submitted for inclusion in the work by you, as defined in the Apache-2.0
license, shall be dual licensed as above, without any additional terms or
conditions.
