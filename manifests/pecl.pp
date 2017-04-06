define php71u::pecl (
  $ensure = $::php71u::params::php_package_ensure
) {
  include ::php71u

  $extension = $title

  package { $extension:
    ensure   => $ensure,
    provider => 'pecl',
    require  => Package[$::php71u::params::php_packages],
  } ~> Exec['php-apachectl-restart']

}
