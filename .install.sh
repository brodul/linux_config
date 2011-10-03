#! /bin/bash

cd /tmp/

git clone git://github.com/brodul/linux_config.git || git fetch; git rebase origin master

cd linux_config/.bazinga

rsync -av .  $HOME/

