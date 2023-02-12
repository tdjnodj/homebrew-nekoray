cask "nekoray" do
    version "2.15"
    sha256 "e3ec443d8c531054177d1b698210d8d64d7fa5e66df754d438c088033123d739"
  
    url "https://github.com/tdjnodj/nekoray/releases/download/#{version}/nekoray-2.15-2023-02-12-macos-amd64.dmg",
        verified: "github.com/MatsuriDayo/nekoray/"
    name "nekoray"
    desc "Qt based cross-platform GUI proxy configuration manager (backend: v2ray / sing-box)"
    homepage "https://matsuridayo.github.io/"
  
    app "nekoray.app"
  
    zap trash: "~/Library/Preferences/nekoray/"
  end
  
