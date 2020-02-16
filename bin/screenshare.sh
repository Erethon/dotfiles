#!/usr/bin/env sh
for i; do :; done;
screenshot.sh $@
scp ~/Screenshots/$i docker:/data/volumes/f.erethon.com/screen
echo "https://f.erethon.com/screen/$i" | xclip
