# Obsidian QT wallet docker

Easily provision a wallet on a VPS

## Docker build and run
```
docker build -t odn-qt .
docker run -d -v ~/odn-wallet/wallet.dat:/root/.obsidian/wallet.dat odn-qt
```

## Wallet setup
```
docker exec yourcontainerid obsidiand encryptwallet YOUR_SECRET_PASS
```
(after encrypting the wallet obsidiand will automatically restart)


## Commands
Unlock your wallet for staking, 
```
docker exec obsidiand walletpassphrase YOUR_SECRET_PASS 999999 true
```



@todo
```
docker exec getaccountaddress 0
# obsidiand walletpassphrase WALLET_PASSWORD <TIME_SECONDS> <STAKING=true>
docker exec obsidiand walletpassphrase mrcoolguyjpeg123 999999 true
```
