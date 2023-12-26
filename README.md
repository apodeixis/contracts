## Solidity Contracts

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

We utilize [Foundry](https://github.com/foundry-rs/foundry) to streamline development process.

### Deploy

```bash
forge create \
    --rpc-url <your_rpc_url> \
    --private-key <your_private_key> \
    --constructor-args <your_owner_address> \
    src/Posts.sol:Posts
```