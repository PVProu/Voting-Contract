# Voting System Smart Contract

This is a simple and secure voting smart contract written in Solidity. It allows users to vote between two blockchain platforms: **Ethereum** and **Polygon**. Votes are recorded immutably and results are visible only to the contract owner.

## ✨ Features

- ✅ One vote per address (prevents double voting)
- ✅ Enum-based voting options: `Ethereum`, `Polygon`
- ✅ Tracks total votes for each option
- ✅ Access control with `onlyOwner` modifier
- ✅ Emits events when a vote is cast
- ✅ Converts enum to human-readable string

## ⚖️ Technologies Used

- [Solidity ^0.8.24](https://docs.soliditylang.org/en/latest/)
- Hardhat / Remix (for testing & deployment)

## 👁️ Contract Overview

### Structs
- `Voter`: Stores if an address has voted and which option they chose

### Enums
- `Options`: Enum with two options: `Ethereum`, `Polygon`

### Modifiers
- `votation`: Blocks double voting
- `voteOptions`: Validates option value
- `onlyOwner`: Restricts functions to the contract deployer

### Key Functions
- `vote_save(option_)`: Public function to cast a vote
- `seeVote(address)`: View what a voter chose (onlyOwner)
- `seeResults()`: Get total votes per option

## ⚡ How to Deploy

### Using Remix
1. Paste the code into [Remix IDE](https://remix.ethereum.org)
2. Select Solidity Compiler > 0.8.24
3. Compile the contract
4. Deploy with Injected Provider (MetaMask) or JavaScript VM

### Using Hardhat (Advanced)
```bash
npm init -y
npm install --save-dev hardhat
npx hardhat
# Follow the prompts to create a basic sample project
