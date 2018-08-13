# Obsidian QT wallet docker

Easily provision a wallet on a VPS

## Docker build and run
```
docker build -t odn-qt .
docker run -d odn-qt
```

## Commands
```
docker exec yourcontainerid obsidiand getstakinginfo
# obsidiand walletpassphrase WALLET_PASSWORD <TIME_SECONDS> <STAKING=true>
docker exec obsidiand walletpassphrase mrcoolguyjpeg123 999999 true
```



@todo
```
docker exec encryptwallet SECRET_HERE
docker exec getaccountaddress 0
# obsidiand walletpassphrase WALLET_PASSWORD <TIME_SECONDS> <STAKING=true>
docker exec obsidiand walletpassphrase mrcoolguyjpeg123 999999 true
```
