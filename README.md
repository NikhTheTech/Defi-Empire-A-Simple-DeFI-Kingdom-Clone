# DeFi-Empire: A Simple DeFi Kingdom Clone

DeFi-Empire is a decentralized finance (DeFi) game inspired by DeFi Kingdoms. This project demonstrates how to create a blockchain-based game on the Avalanche network.

## Features

- **ERC20 Token Integration**: Use custom tokens to play the game.
- **Vault Contracts**: Manage in-game assets securely.
- **DeFi Mechanics**: Implement staking, yield farming, and more.

## Prerequisites

- Linux environment (WSL for Windows)
- Avalanche CLI

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/NikhTheTech/Defi-Empire-A-Simple-DeFI-Kingdom-Clone.git
   cd Defi-Empire-A-Simple-DeFI-Kingdom-Clone
   ```

2. **Install dependencies and set up Avalanche CLI.**

## Steps

1. **Create Avalanche Subnet**:
   ```bash
   avalanche subnet create circle
   ```

2. **Deploy Subnet**:
   ```bash
   avalanche subnet deploy circle
   ```

3. **Configure Metamask**:
   - Add the Avalanche network details to your Metamask wallet.

4. **Deploy ERC20 and Vault Contracts using Remix**:
   - Copy the ERC20 and Vault contract code into Remix.
   - Deploy the contracts using Remix IDE.

5. **Interact with Contracts**:
   - Test the deployed contracts to ensure they function correctly.

---

### Setting up Avalanche CLI and Deploying Subnet

1. **Install AvalancheGo**:
   Download from [AvalancheGo Releases](https://github.com/ava-labs/avalanchego/releases) and install it.

   ```bash
   tar -xvf avalanchego-linux-amd64.tar.gz
   sudo mv avalanchego /usr/local/bin/
   ```

2. **Install Avalanche-CLI**:
   Clone and build:

   ```bash
   git clone https://github.com/ava-labs/avalanche-cli.git
   cd avalanche-cli
   go build -o avalanche-cli main.go
   sudo mv avalanche-cli /usr/local/bin/avalanche
   ```

3. **Create and Deploy Subnet**:

   ```bash
   avalanche subnet create mySubnet
   avalanche network deploy --local mySubnet
   ```

4. **Connect MetaMask**:  
   Use your Subnet's RPC URL in MetaMask.


## License

This project is licensed under the MIT License.
