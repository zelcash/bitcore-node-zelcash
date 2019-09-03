#!/bin/bash

# install needed dependencies
sudo apt-get update
sudo apt-get install \
      build-essential pkg-config libc6-dev m4 g++-multilib \
      autoconf libtool ncurses-dev unzip git python \
      zlib1g-dev wget bsdmainutils automake curl

# zelcashBitcore
cd
git clone -b Bitcore https://github.com/zelcash/zelcash.git zelcashBitcore
cd zelcashBitcore
./zcutil/fetch-params.sh
./zcutil/build.sh -j$(nproc)
cd
echo "Zelcashd with extended RPC functionalities is prepared. Please run following command to install insight explorer for zelcash"
echo "wget -qO- https://raw.githubusercontent.com/TheTrunk/bitcore-node-zelcash/master/installExplorer.sh | bash"