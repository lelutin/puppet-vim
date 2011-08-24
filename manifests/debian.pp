class vim::debian inherits vim::base {
    if $set_vim_alternative {
      exec { "update-alternatives-vim":
        command => "/usr/bin/update-alternatives --set editor /usr/bin/vim.basic",
        onlyif => "test `/usr/bin/update-alternatives --query editor | egrep '^Value:' | sed -e 's/^Value: //'` != '/usr/bin/vim.basic'",
        require => Package[vim],
      }
    }
}
