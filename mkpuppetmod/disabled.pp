# = Class: %name
#
# Sets up but does not enable the service
#
# == Sample Usage:
#
# include %name
#
class %name inherits %module::service {

  Service['%module'] {
    ensure => 'stopped',
    enable => false,
  }

}

