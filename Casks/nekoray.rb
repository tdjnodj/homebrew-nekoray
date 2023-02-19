cask "nekoray" do
    version "2.16"
    sha256 "fd18ea560e7c94ea4c5fc6789310871a4264c9121e823a0ec964c1483a9955f6"
  
    url "https://github.com/tdjnodj/nekoray/releases/download/#{version}/nekoray-2.16-2023-02-14-macos-amd64.dmg",
        verified: "github.com/MatsuriDayo/nekoray/"
    name "nekoray"
    desc "Qt based cross-platform GUI proxy configuration manager (backend: v2ray / sing-box)"
    homepage "https://matsuridayo.github.io/"
  
    app "nekoray.app"
  
    zap trash: "~/Library/Preferences/nekoray/"
  end