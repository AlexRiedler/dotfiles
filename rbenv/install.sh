#!/bin/sh

# Install rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src # dynamic bash extension (optimization)

# Install ruby-build
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

# Verify newest version
cd "$(rbenv root)"/plugins/ruby-build && git pull
