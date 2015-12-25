#!/usr/bin/env bash

source ~vagrant/.rvm/scripts/rvm

rvm use --install $1

shift

if (( $# ))
then gem install $@
fi
