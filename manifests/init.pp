# == Class
#
# networking
#
# == Synopsis
#
# This class is used for managing each servers /etc/networking/interfaces /etc/hosts and /etc/resolv.conf files
#
# == Author
#
# John McCarthy <midactsmystery@gmail.com>
#
# - http://www.midactstech.blogspot.com -
# - https://www.github.com/Midacts -
#
# == Date
#
# 24th of April, 2014
#
# -- Version 1.0 --
#
class networking {

  file { '/etc/resolv.conf':
    ensure      => present,
    content     => template('networking/resolv.conf.erb'),
    owner       => root,
    group       => root,
    mode        => 644,
  }

  file { '/etc/hosts':
    ensure      => present,
    content     => template('networking/hosts.erb'),
    owner       => root,
    group       => root,
    mode        => 644,
  }

  file { '/etc/network/interfaces':
    ensure      => present,
    content     => template('networking/interfaces.erb'),
    owner       => root,
    group       => root,
    mode        => 644,
  }

}
