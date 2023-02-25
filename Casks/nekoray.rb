cask "nekoray" do
    version "2.17"
    sha256 "beccf1663d4decff946d69a44b0bacfbc168c7aa55e128c5f259058c6d67f5a0"
  
    url "https://github.com/tdjnodj/nekoray/releases/download/#{version}/nekoray-2.17-2023-02-25-macos-amd64.dmg",
        verified: "github.com/MatsuriDayo/nekoray/"
    name "nekoray"
    desc "Qt based cross-platform GUI proxy configuration manager (backend: v2ray / sing-box)"
    homepage "https://matsuridayo.github.io/"
  
    app "nekoray.app"
  
    zap trash: "~/Library/Preferences/nekoray/"
  end