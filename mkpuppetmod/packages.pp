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

  package {$%module::params::pkgs:
    ensure => 'installed',
    alias  => '%module',
  }

}

