🗳️ voting-system – Voting Smart Contract in Solidity

Welcome to `voting-system`, a foundational smart contract built in Solidity for secure and transparent blockchain-based voting. This project allows any user to vote on one of two popular blockchain platforms: **Ethereum** or **Polygon**, while ensuring integrity, traceability, and fairness. Designed with simplicity and gas efficiency in mind, this contract showcases the core capabilities of Web3 logic—ownership control, immutability, data validation, and interaction with on-chain users.

It’s the perfect example of how decentralized technologies can be used to implement real-world use cases like voting, DAOs, and lightweight governance tools.

---

## 🚀 Key Features

- 👤 Only the owner (deployer) can see the votes cast by others  
- 🗳️ Each address can vote only once  
- ✅ Input validation through modifiers  
- 📊 Vote counters for both options (Ethereum & Polygon)  
- 📡 Emits events when a vote is submitted  
- 🔒 No loops, gas-safe implementation  

---

## 🧠 Voter Structure

Each voter includes:

- `hasVoted`: boolean that tracks if an address has already voted  
- `ChosenOption`: enum (Ethereum or Polygon)  

---

## ⚙️ How to Deploy and Test (Remix)

1. Open [Remix IDE](https://remix.ethereum.org)  
2. Paste the contents of `VotingSystem.sol` into a new file  
3. Compile using Solidity version 0.8.24  
4. Deploy the contract using Injected Web3 (MetaMask) or JavaScript VM  

---

## 🔘 Available Functions

| Function | Description |
|----------|-------------|
| `vote_save(option_)` | Casts a vote for Ethereum or Polygon |
| `seeVote(address)` | Shows vote of a specific address (owner only) |
| `hasAlreadyVoted(address)` | Checks if an address has voted (owner only) |
| `seeResults()` | Returns vote counts for each option |

---

## 🔐 Security and Validations

- `onlyOwner`: restricts sensitive read access  
- `votation`: prevents multiple votes per address  
- `voteOptions`: ensures enum value is valid  

---

## 📦 Events

- `hasAddressVoted(address, option)`: triggered when a vote is cast  

---

## 🧱 Technologies

- Solidity 0.8.24  
- Remix IDE for deployment and testing  

---

## 📜 License

This project is licensed under the **LGPL-3.0-only** license.

---

## ✍️ Author

Developed by **Pol Vela** as part of his Web3 development training. This is his first smart contract project, and it is publicly available as part of his GitHub portfolio. Pol is currently expanding his expertise in smart contracts, decentralized apps, and the blockchain ecosystem.
