#!/bin/bash

# Get the old version and TAG.
oldVersion=$(cat api/version.txt)
oldTag=$(cat api/tag.txt)

# Get the newest TAG.
newTag=$(curl https://api.github.com/repos/matsuridayo/nekoray/tags -u "tdjnodj:"| grep 'name' | cut -d\" -f4 | head -1)
if [ -z "$newTag" ]; then
    echo "Didn't get the newest TAG!"
    exit 1
fi


if [ "$newTag" == "$oldVersion" ]; then
    exit 0
fi

newVersion=$(curl https://raw.githubusercontent.com/MatsuriDayo/nekoray/main/nekoray_version.txt)

oldSha256=$(cat Casksnekoray.rb | grep "sha256" | cut -d '"' -f 2)

mkdir tmp_dmg/
cd tmp_dmg/
curl -L -O https://github.com/tdjnodj/nekoray/releases/download/${newTag}/nekoray-${newVersion}-macos-amd64.dmg
newSha256=$(opensll dgst -sha256 nekoray-${newVersion}-macos-amd64.dmg)

cd ..
rm -rf tmp_dmg/

# Change the file.
sed -i "s/${oldSha256}/${newSha256}/g" Casks/nekoray.rb

sed -i "s/${oldTag}/${newTag}/g" Casks/nekoray.rb
sed -i "s/${oldTag}/${newTag}/g" api/tag.txt

sed -i "s/nekoray-${oldVersion}-macos-amd64.dmg/nekoray-${newVersion}-macos-amd64.dmg/g" Casks/nekoray.rb
sed -i "s/${oldVersion}/${newVersion}/g" api/version.txt