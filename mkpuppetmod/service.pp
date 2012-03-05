# = Class: %class
#
# Installs packages for %module
#
# == Actions:
#
# Describe what packages get installed and when.
#
# == Requires:
#
# Requirements. This could be (external) packages that should be made available.
#
# == Sample Usage:
#
#   include %class
#
class %class {

  require %module::params
  $service_name = $%module::params::service_name
  $service_path = $%module::params::service_path
  $service_hasrestart = $%module::params::service_hasrestart
  $service_hasstatus = $%module::params::service_hasstatus

  service {'%module':
    ensure     => 'running',
    enable     => true,
    name       => $service_name,
    path       => $service_path,
    hasrestart => $service_hasrestart,
    hasstatus  => $service_hasstatus,
    require    => Package['%module']
  }

}

