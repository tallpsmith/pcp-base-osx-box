#!/bin/sh
sudo -H -u vagrant brew update
sudo -H -u vagrant brew install --universal libmicrohttpd pixman  libpng xz
sudo -H -u vagrant brew install cairo coreutils automake
sudo -H -u vagrant brew install qt pyqt5
sudo -H -u vagrant brew install gnu-tar --with-default-names
