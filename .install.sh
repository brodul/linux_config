#! /bin/bash

cd /tmp/

if [ -d "linux_config" ]; then
  rm -rf  linux_config
fi

git clone git://github.com/brodul/linux_config.git


rm -rf linux_config/.git
cp -r ./.[a-zA-Z0-9]*  $HOME/

