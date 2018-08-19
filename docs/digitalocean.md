DigitalOcean docker 
===================

Create -> Droplets
Container distributions, CoreOS (stable)
Select region and ensure an SSH key has been added

```
ssh ssh core@your.coreos.droplet.ip
docker build -t odn-qt-wallet .
docker run --rm -d -v ~/odn-wallet/wallet.dat:/root/.obsidian/wallet.dat --name=odn-qt-wallet odn-qt-wallet
```

If using the smallest DigitalOcean Droplet (currently 1G) use the following before building:
```
sudo dd if=/dev/zero of=/var/swap.img bs=1024k count=1000
sudo mkswap /var/swap.img
sudo chmod 600 /var/swap.img
sudo swapon /var/swap.img
```
