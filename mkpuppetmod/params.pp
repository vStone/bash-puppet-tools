# = Class: %class
#
# Configure settings for %module
#
# == Parameters:
#
# $package::  Overrides the packages to be installed. Defaults to os specific.
#
# == Sample Usage:
#
#   class {'%class':
#     packages => 'value'
#   }
#
class %class (
  $packages = undef
){

  #####################################
  #             Packages              #
  #####################################
  $pkgs = $packages ? {
    undef   => $::operatingsystem ? {
      /(?i:centos|redhat)/ => ['%module'],
      /(?i:ubuntu|debian)/ => ['%module'],
      default              => ['%module'],
    },
    default => $packages,
  }

  #####################################
  #             Service               #
  #####################################
  $service_name = $::operatingsystem ? {
    /(?i:centos|redhat)/ => '%module',
    /(?i:ubuntu|debian)/ => '%module',
    default              => '%module',
  }
  $service_path = $::operatingsystem ? {
    default              => '/etc/init.d',
  }
  $service_hasrestart = $::operatingsystem ? {
    default              => true,
  }
  $service_hasstatus = $::operatingsystem ? {
    default              => true,
  }


}

