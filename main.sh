#! /bin/bash

# Clone Upstream
cd ./xpad-noone-debian
git clone https://github.com/medusalix/xpad-noone

# Get build deps
apt-get build-dep ./ -y

# Build package
dpkg-buildpackage --no-sign

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
