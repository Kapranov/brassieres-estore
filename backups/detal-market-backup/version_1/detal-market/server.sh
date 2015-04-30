#!/usr/bin/env bash
rake tmp:clear
rake log:clear
rails server -b 212.26.132.78 -p 80
