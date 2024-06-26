# Berry Blocks project
Berries that can be turned into blocks, inspired by Pokemon, and build for Pokemon ENS community

## Berries
Berries are ERC-20 tokens on Arbitrum. Every pokemon ENS name holder included in the snapshot received 151 (for the 151 original pokemon) berries of each type at initial deployment. Berry Blocks can be used to attract pokemon.

Deployments:
- [Oran: https://arbiscan.io/token/0xa2e32c1e380acce23e120b0f76828ee4c9f0018e](https://arbiscan.io/token/0xa2e32c1e380acce23e120b0f76828ee4c9f0018e)
- [Chesto: https://arbiscan.io/address/0x6Bf4a50E6aB5B2e3437Eb96763D46168B83cD402](https://arbiscan.io/address/0x6Bf4a50E6aB5B2e3437Eb96763D46168B83cD402)
- [Persim: https://arbiscan.io/address/0xB026541228F202aAF45AD37fB288c07891e75c66](https://arbiscan.io/address/0xB026541228F202aAF45AD37fB288c07891e75c66)
- [Pinap: https://arbiscan.io/address/0x11C47Deb19f1e50B840E7F95De26930D81649782](https://arbiscan.io/address/0x11C47Deb19f1e50B840E7F95De26930D81649782)

New berries can be created at any time.

There are 1025 Pokemon ENS names, and each received 151 of the 4 initial types of berries. Meaning the total initial berry supply is capped at: 1025 x 151 x 4 = 619,100 Berries

About 15 Pokemon ENS names are unowned because of experiations. The berries left over from not sending to unowned Pokemon ENS names will be used for providing liquidity.

## Berry Block NFTs

Each Berry Block is a unique 1 of a kind NFT. Berry Blocks are created by grinding 10 x 4 kinds of berries together through calling the `grind` function. The same kinds of berries can be used, but 4 groups of 10 tokens must be supplied. Berries used in this way are burned.

Berry Block traits are deterministically created and unique to each combination – so if you use a different combination of berries the resulting Blocks will be different. But if you use the same combination twice the resulting Blocks will be exactly the same.

For security, the Berry Block NFT contract must be given an allowance on each berry token to use them.

619,100 berries / 40 berries per Berry Block = maximum 15,477 NFTs with 4^4 = 256 different combinations of traits.


### Deployment
Deployed and verified on Arbitrum here: 

### Technical Features
1. An admin can set an external URI contract which has unique URIs for each NFT. This can be updated at any time for now. This can also be removed with the same `setExternalURI` function.
2. New berry types can be added using the `adminUpdateNewBerryType` function using the public address of the berry token.
3. Berry types can't be removed.
