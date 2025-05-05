#!/usr/bin/env bash

# Don't install recommended or suggested packages by default
cat > /etc/apt/apt.conf.d/01norecommend << EOF
APT::Install-Recommends "0";
APT::Install-Suggests "0";
EOF
