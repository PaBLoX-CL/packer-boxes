#!/bin/sh

# Setup sudo access for no password to wheel group
pkg_add -r sudo
sed -i -e 's/\# \%wheel ALL=(ALL) NOPASSWD/\%wheel ALL=(ALL) NOPASSWD/g' /usr/local/etc/sudoers
sed -i -e 's/\# Defaults     env_keep += "PKG/Defaults     env_keep += "PKG/' /usr/local/etc/sudoers

service sshd start

