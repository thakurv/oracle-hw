class apache::service inherits apache{
 service{ $packagename:
    enable    => true,
    ensure    => running,
    subscribe => File['/etc/httpd/conf/httpd.conf'],
  }
}
