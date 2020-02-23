#!/usr/bin/env bash

cp -r ./IEC2.dictionary ~/Library/Dictionaries/

echo "Asking for the administrator password upfront"
sudo -v

mkdir -p /Library/Spelling/
cp -r ./spelling/catalan/* /Library/Spelling/
