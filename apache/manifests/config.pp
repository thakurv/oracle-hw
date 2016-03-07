class apache::config inherits apache{
include php
  file{ '/etc/httpd/conf/httpd.conf':
    ensure  => file,
    require => Package[$packagename],
  }

  file { $dirname:
    ensure => directory,
  }

  file { $filename:
    ensure  => file,
    source  => $source,
  }
}
