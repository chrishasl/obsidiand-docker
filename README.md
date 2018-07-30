# Obsidian QT wallet docker

Easily provision a wallet on a VPS

## Docker
```
docker build -t odn-qt .
docker run -d odn-qt
```

### Use

todo

```
docker exec encryptwallet SECRET_HERE
docker exec getaccountaddress 0
# obsidiand walletpassphrase WALLET_PASSWORD <TIME_SECONDS> <STAKING=true>
docker exec obsidiand walletpassphrase mrcoolguyjpeg123 999999 true
```
