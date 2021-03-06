obsidiand-docker
================
[![Build Status](https://travis-ci.org/chrishasl/obsidiand-docker.svg?branch=master)](https://travis-ci.org/chrishasl/obsidiand-docker)

Easily provision [obsidiand](https://obsidianplatform.com/) using [Docker](https://www.docker.com/)

## Docker build and initial directory setup/sync
```
docker build -t obsidiand-docker .
docker run --rm -d -v ~/odn-wallet/:/root/.obsidian/ --name=obsidiand-docker obsidiand-docker
```

## Run wallet
```
docker run --rm -d -v ~/odn-wallet/wallet.dat:/root/.obsidian/wallet.dat --name=obsidiand-docker obsidiand-docker
```

## Wallet setup
```
docker exec obsidiand-docker obsidiand encryptwallet **YOUR_SECRET_PASS**
```

## Commands
Unlock your wallet for staking: 
```
docker exec obsidiand-docker obsidiand walletpassphrase **YOUR_SECRET_PASS** 999999 true
```

Generate an ODN address:
```
docker exec obsidiand-docker obsidiand getaccountaddress 0
```
