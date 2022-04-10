# UDAO -  EthGlobal DAOHacks Hackathon Project

University Decentralized Autonomous Organization is designed to allow students at a university to submit proposals for projects and request funding. Members of the DAO can fund the projects that  best advance UDAO's goal of spreading web3 awareness and creating projects that help the community.

## UDAO's Vision

Students at any university can clone and redeploy UDAO as the foundation of their local web3 club. By having local duplicates of UDAO students can get experience interacting with web3 infrastructure without giving up the in person contact that local clubs give. UDAO has a local, non hierarchical governance structure with NFT based voting. Local interaction on a university campus allows students to come together and pursue their interests and reach students who know nothing about web3. The majority of the population knows crypto through Dogecoin and monkey NFTS, but there is so much more to web3 than memecoins. By Keeping membership local members can easily reach students who would never know what web3 is if one of their peers did not tell them. Clubs should act as decentralized as possible without losing the small club feel of the organization. All decisions including the allocation of funds are carried out on the blockchain through voting.

## Governance

The Governance structure of UDAO is….

## About US

We are...

## Submitting Proposals Through IPFS

## Voting With Skillwallet

## Compiling and Running

The first things you need to do are cloning this repository and installing its
dependencies:

```sh
git clone https://github.com/nomiclabs/hardhat-hackathon-boilerplate.git
cd hardhat-hackathon-boilerplate
npm install
```

Once installed, let's run Hardhat's testing network:

```sh
npx hardhat node
```

Then, on a new terminal, go to the repository's root folder and run this to
deploy your contract:

```sh
npx hardhat run scripts/deploy.js --network localhost
```

Finally, we can run the frontend with:

```sh
cd frontend
npm install
npm start
```

> Note: There's [an issue in `ganache-core`](https://github.com/trufflesuite/ganache-core/issues/650) that can make the `npm install` step fail. 
>
> If you see `npm ERR! code ENOLOCAL`, try running `npm ci` instead of `npm install`.

Open [http://localhost:3000/](http://localhost:3000/) to see your Dapp. You will
need to have [Metamask](https://metamask.io) installed and listening to
`localhost 8545`.

## User Guide

You can find detailed instructions on using this repository and many tips in [its documentation](https://hardhat.org/tutorial).

- [Writing and compiling contracts](https://hardhat.org/tutorial/writing-and-compiling-contracts/)
- [Setting up the environment](https://hardhat.org/tutorial/setting-up-the-environment/)
- [Testing Contracts](https://hardhat.org/tutorial/testing-contracts/)
- [Setting up Metamask](https://hardhat.org/tutorial/hackathon-boilerplate-project.html#how-to-use-it)
- [Hardhat's full documentation](https://hardhat.org/getting-started/)

For a complete introduction to Hardhat, refer to [this guide](https://hardhat.org/getting-started/#overview).

## Troubleshooting

- `Invalid nonce` errors: if you are seeing this error on the `npx hardhat node`
  console, try resetting your Metamask account. This will reset the account's
  transaction history and also the nonce. Open Metamask, click on your account
  followed by `Settings > Advanced > Reset Account`.

## License
[MIT](https://choosealicense.com/licenses/mit/)
