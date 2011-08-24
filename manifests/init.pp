# modules/vim/manifests/init.pp - manage vim stuff
# Copyright (C) 2007 admin@immerda.ch
# GPLv3
#

class vim {
    case $operatingsystem {
        openbsd: { include vim::openbsd }
        gentoo: { include vim::gentoo }
        centos: { include vim::centos }
        debian: { include vim::debian }
        default: { include vim::base }
    }
}
