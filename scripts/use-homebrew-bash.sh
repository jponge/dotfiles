#!/bin/bash
set -e
set -x

if ! grep -q /usr/local/bin/bash /etc/shells ; then
  sudo -s "echo /usr/local/bin/bash >> /etc/shells"
fi
chsh -s /usr/local/bin/bash
