# = Class: %name
#
# Sets up but does not enable the service
#
# == Sample Usage:
#
# include %name
#
class %name inherits %module::service {

  Service['%::module::params::service_name'] {
    ensure => 'stopped',
    enable => false,
  }

}

