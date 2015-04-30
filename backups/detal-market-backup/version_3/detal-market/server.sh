#!/usr/bin/env bash

# rackup -o 212.26.132.30 -p 2271 config.ru
# puma -b tcp://212.26.132.30 -p 2271
# rake tmp:clear && rake log:clear && rackup -o 212.26.132.78 -p 80 config.ru
rake tmp:clear && rake log:clear && thin start -a 212.26.132.78 -p 80
