# Obsidian QT wallet docker

Easily provision a wallet on a VPS

## Docker build and run
```
docker build -t odn-qt-wallet .
docker run --rm -d -v ~/odn-wallet/wallet.dat:/root/.obsidian/wallet.dat --name=odn-qt-wallet odn-qt-wallet
```

## Wallet setup
```
docker exec odn-qt-wallet obsidiand encryptwallet YOUR_SECRET_PASS
```
(after encrypting the wallet obsidiand will automatically restart)


## Commands
Unlock your wallet for staking, 
```
docker exec odn-qt-wallet obsidiand walletpassphrase YOUR_SECRET_PASS 999999 true
```

Generate an ODN address
```
docker exec odn-qt-wallet obsidiand getaccountaddress 0
```
