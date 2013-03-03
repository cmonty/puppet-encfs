class encfs {
  include homebrew

  package { "encfs": }

  exec { "sudo /bin/cp -rfX /opt/boxen/homebrew/Cellar/fuse4x-kext/0.9.2/Library/Extensions/fuse4x.kext /Library/Extensions":
    require => Package["encfs"],
  }

  exec { "sudo chmod +s /Library/Extensions/fuse4x.kext/Support/load_fuse4x":
    require => Package["enfs"]
  }
}
