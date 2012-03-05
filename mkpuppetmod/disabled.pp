# = Class: %class
#
# Sets up but does not enable the service
#
# == Sample Usage:
#
# include %class
#
class %class inherits %module::service {

  Service['%module'] {
    ensure => 'stopped',
    enable => false,
  }

}

