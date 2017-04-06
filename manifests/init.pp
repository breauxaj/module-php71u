# Class: php71u
#
# This class installs PHP 7.1 from IUS
#
# Parameters:
#
#  ensure: (default latest)
#    Determine which version to install
#
# Actions:
#   - Install PHP 7.1
#
# Sample Usage:
#
#  For a standard installation, use:
#
#    class { 'php71u': }
#
class php71u (
  $ensure = $::php71u::params::php_package_ensure
) inherits ::php71u::params {
  package { $::php71u::params::php_packages:
    ensure  => $ensure
  }

  $config = hiera_hash('php',{})
  create_resources('php71u::config',$config)

  $modules = hiera_hash('php::modules',{})
  create_resources('php71u::modules',$modules)

  $pecl = hiera_hash('php::pecl',{})
  create_resources('php71u::pecl',$pecl)

  $raw = hiera_hash('php::raw',{})
  create_resources('php71u::raw',$raw)

  exec { 'php-apachectl-restart':
    command     => '/usr/sbin/apachectl restart',
    onlyif      => '/usr/bin/test -x /usr/sbin/apachectl',
    refreshonly => true
  }

  exec { 'pecl-update-channels':
    command => '/usr/bin/pecl update-channels',
    timeout => 10000,
    require => Package[$::php71u::params::php_packages]
  }

}
