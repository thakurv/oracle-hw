class apache (
 $packagename = $apache::params::packagename,
 $dirname = $apache::params::dirname,
 $filename = $apache::params::filename,
 $source = $apache::params::source,
) inherits apache::params {

  anchor { 'apache::begin': } ->
  class { '::apache::install': } ->
  class { '::apache::config': } ->
  class { '::apache::service': } ->
  anchor { 'apache::end': }

}
