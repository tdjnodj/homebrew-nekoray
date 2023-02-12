cask "nekoray" do
    version "2.15"
    sha256 "40a9b22c9f225b2ea663a07d0af31002cb87599edab4e631a10e0e77330ee9d8"
  
    url "https://github.com/tdjnodj/nekoray/releases/download/#{version}/nekoray-2.15-2023-02-12-macos-amd64.dmg",
        verified: "github.com/MatsuriDayo/nekoray/"
    name "nekoray"
    desc "Qt based cross-platform GUI proxy configuration manager (backend: v2ray / sing-box)"
    homepage "https://matsuridayo.github.io/"
  
    app "nekoray.app"
  
    zap trash: "~/Library/Preferences/nekoray/"
  end
  