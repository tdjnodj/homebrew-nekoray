#!/bin/bash

# Get the old version and TAG.
oldVersion=$(cat Casks/nekoray.rb | grep version |head -1 | cut -d\" -f2)
oldTag=$(nekoray-2.15-2023-02-12)

# Get the newest TAG.
newTag=$(curl https://api.github.com/repos/tdjnodj/nekoray/tags -u "tdjnodj:"| grep 'name' | cut -d\" -f4 | head -1)
if [ -z "$newTag" ]; then
    echo "Didn't get the newest TAG!"
    exit 1
fi


if [ "$newTag" == "$oldVersion" ]; then
    exit 0
fi

newVersion=$(curl https://raw.githubusercontent.com/tdjnodj/nekoray/main/nekoray_version.txt)

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