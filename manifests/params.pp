# Class: php71u::params
#
# This class set parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#   - Does not support other osfamily patterns - redhat only
#
class php71u::params {
  $php_package_ensure = 'latest'

  case $::osfamily {
    'RedHat': {
      case $::operatingsystem {
        default: {
          case $::operatingsystemmajrelease {
            default: {
              $php_packages = [
                'mod_php71u',
                'pear1u',
                'php71u-bcmath',
                'php71u-cli',
                'php71u-common',
                'php71u-dba',
                'php71u-devel',
                'php71u-gd',
                'php71u-intl',
                'php71u-json',
                'php71u-ldap',
                'php71u-mbstring',
                'php71u-mcrypt',
                'php71u-mysqlnd',
                'php71u-pdo',
                'php71u-process',
                'php71u-xml'
              ]
            }
          }
        }
      }
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }

}
