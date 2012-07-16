# = Class: %name
#
# Description of %name
#
# == Actions:
#
# Describe what this class does. What gets configured and how.
#
# == Requires:
#
# Requirements. This could be packages that should be made available.
#
# == Sample Usage:
#
# == Todo:
#
# TODO: Update documentation
#
class %name (

) inherits %name::params {
  include ::%module::packages
  include ::%module::service
}

