#!/bin/sh

# Ensure OSX has a `vagrant:vagrant` style user:group
# otherwise rsync doesn't work properly...
VAGRANT_GID=$(id -u vagrant)
sudo dscl . -create /Groups/vagrant
sudo dscl . -create /Groups/vagrant PrimaryGroupID $VAGRANT_GID
sudo dscl . -create /Users/vagrant PrimaryGroupID $VAGRANT_GID


sudo -H -u vagrant brew update
sudo -H -u vagrant brew upgrade
sudo -H -u vagrant brew install --universal coreutils automake libmicrohttpd pixman libpng xz
sudo -H -u vagrant brew install pkg-config cairo qt pyqt5
sudo -H -u vagrant brew install gnu-tar --with-default-names

sudo -H -u vagrant brew cleanup

sudo dd if=/dev/zero of=/EMPTY bs=1m || true; sudo sync; sudo rm -f /EMPTY; sudo sync
