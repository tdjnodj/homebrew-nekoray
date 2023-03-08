cask "nekoray" do
    version "2.18"
    sha256 "2a9397a5549e2ef86d4e902c28a2bec944508b904abf848ea9482bbe1f3b1db2"
  
    url "https://github.com/tdjnodj/nekoray/releases/download/#{version}/nekoray-2.18-2023-03-02-macos-amd64.dmg",
        verified: "github.com/MatsuriDayo/nekoray/"
    name "nekoray"
    desc "Qt based cross-platform GUI proxy configuration manager (backend: v2ray / sing-box)"
    homepage "https://matsuridayo.github.io/"
  
    app "nekoray.app"
  
    zap trash: "~/Library/Preferences/nekoray/"
  end