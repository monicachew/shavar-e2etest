#!/bin/bash
echo
echo Downloading latest Nightly...
echo  
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
rm -rf $DIR'/tp_profile'
open $DIR'/tp_profile.zip'
rm -rf $DIR'/LatestNightly.dmg'
curl -# -C - -o $DIR'/LatestNightly.dmg' 'ftp://ftp.mozilla.org/pub/mozilla.org/firefox/nightly/latest-mozilla-central/firefox-40.0a1.en-US.mac.dmg'
open $DIR'/LatestNightly.dmg'
echo
echo Waiting 20 seconds for disk image to be mounted...
echo
sleep 20
echo Launching Firefox...
cd /Volumes/Nightly/FirefoxNightly.app/Contents/MacOS
./firefox -profile $DIR'/tp_profile' -url $DIR'/placeholder.html'
