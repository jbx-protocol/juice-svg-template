# juice-svg-template
Template for creating onchain SVGs

## Usage
1. Install dependencies with `forge install && yarn install`
2. Run `forge test --ffi` to output an svg. Each time you run the test in `SVG.t.sol` will output `onchain.svg` to `/src` and open it in your default app for SVGs. Browser is a good choice for SVG reader. 
3. Change the data in `SVG.sol` to output the SVG of your dreams.


Note: `foundry.toml`'s allows Forge to find libs in `/node_modules` without an explicit remapping. For this reason there is no remappings.txt needed. 