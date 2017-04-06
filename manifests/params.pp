# Class: php70u::params
#
# This class set parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#   - Does not support other osfamily patterns - redhat only
#
class php70u::params {
  $php_package_ensure = 'latest'

  case $::osfamily {
    'RedHat': {
      $php_packages = [
        'mod_php70u',
        'php70u-bcmath',
        'php70u-cli',
        'php70u-common',
        'php70u-dba',
        'php70u-devel',
        'php70u-gd',
        'php70u-intl',
        'php70u-json',
        'php70u-ldap',
        'php70u-mbstring',
        'php70u-mcrypt',
        'php70u-mysqlnd',
        'php70u-pdo',
        'php70u-pear',
        'php70u-process',
        'php70u-xml'
      ]
    }
    default: {
      fail("The ${module_name} module is not supported on an ${::osfamily} based system.")
    }
  }

}
