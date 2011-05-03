#! /bin/bash

cd /tmp/

if [ -d "linux_config" ]; then
  rm -rf  linux_config
fi

git clone git://github.com/brodul/linux_config.git



cp -r linux_config/  $HOME/

