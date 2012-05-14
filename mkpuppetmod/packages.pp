# = Class: %name
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
#   include %name
#
# == Todo:
#
# * Update documentation
#
class %name {

  require %module::params

  package {$%module::params::pkgs:
    ensure => 'installed',
    alias  => '%module',
  }

}

