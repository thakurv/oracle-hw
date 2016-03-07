class apache::install inherits apache {
  package { $packagename:
	ensure => 'present',
}
}
