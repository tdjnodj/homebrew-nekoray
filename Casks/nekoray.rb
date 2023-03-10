cask "nekoray" do
    version "2.19"
    sha256 "03e0e7f37747e46af70707c33128783161cc1426be1ce5ca68d6feba946dde68"
  
    url "https://github.com/tdjnodj/nekoray/releases/download/#{version}/nekoray-2.19-2023-03-08-macos-amd64.dmg",
        verified: "github.com/MatsuriDayo/nekoray/"
    name "nekoray"
    desc "Qt based cross-platform GUI proxy configuration manager (backend: v2ray / sing-box)"
    homepage "https://matsuridayo.github.io/"
  
    app "nekoray.app"
  
    zap trash: "~/Library/Preferences/nekoray/"
  end