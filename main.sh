# Clone Upstream
cd ./xpad-noone-debian
git clone https://github.com/medusalix/xpad-noone

# Get build deps
apt-get build-dep ./ -y

# Build package
LOGNAME=root dh_make --createorig -y -l -p xpad-noone_1.0
dpkg-buildpackage

# Move the debs to output
cd ../
mkdir -p ./output
mv ./*.deb ./output/
