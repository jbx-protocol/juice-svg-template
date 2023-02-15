# juice-svg-template
Template for creating onchain SVGs

## Before you start
1. Install [Foundry](https://book.getfoundry.sh/getting-started/installation).
2. Install [Yarn Classic](https://classic.yarnpkg.com/en/docs/install#mac-stable). 

## Usage
1. Install dependencies with `forge install && yarn install`
2. Run `forge test --ffi` to output an svg. Each time you run the test in `SVG.t.sol` will output `onchain.svg` to `/src` and open it in your default app for SVGs. Browser is a good choice for SVG reader. 
3. Change the data in `SVG.sol` to output the SVG of your dreams.


Note: `foundry.toml`'s allows Forge to find libs in `/node_modules` without an explicit remapping. For this reason there is no remappings.txt needed. 

## Project Handles
To test rendering Juicebox Project Handles in your SVG: 

1. Switch to the `project-handles` branch. 
2. Run `forge test --fork-url $RPC_URL -v --via-ir --ffi`, replacing `$RPC_URL` with your own RPC provider and API key. API providers include Infura and Alchemy. An RPC url might look like `https://mainnet.infura.io/v3/xyzabc123xyzabc123xyzabc123`.
3. If you append `--fork-block-number BLOCK_NUMBER` to the above, replacing `BLOCK_NUMBER` with a recent block height, Forge will cache the fork and the tests will run faster. Do not be surprised if values don't change when you set a new project handle onchain.
4. To fork Goerli instead of Mainnet, first swap which lines are commented in `SVG.t.sol`'s `setUp()` function, then run the command in step 2 with a Goerli RPC URL. 

More information on Project Handles including its testnet address is available in [the Juicebox Docs](https://info.juicebox.money/dev/api/contracts/or-utilities/jbprojecthandles/).

## Onchain Typeface: Capsules
You can incorporate other onchain assets, such as Peripheralist's Capsules typeface, into your onchain SVG. The entire font is stored onchain, so you can incorporate it into your SVG art without worrying about offchain depenencies such as the fons built-in to the viewer's operating system, or a popular Fonts API being unavailable when the SVG is viewed.

To test rendering an SVG using Capsules: 

1. Switch to the `typeface` branch
2. Run `forge test --fork-url $RPC_URL -v --via-ir --ffi`, replacing `$RPC_URL` with your own RPC provider and API key. 

## Credits
This repo draws on work by [Jango](https://github.com/mejango), [DrGorilla](https://github.com/drgorillamd), [Peripheralist](https://github.com/peripheralist), and [Jeton Connu](https://github.com/jeton-connu).