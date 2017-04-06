define php71u::modules (
  $ensure = $::php71u::params::php_package_ensure
) {
  include ::php71u

  $required = $title

  package { "php71u-${required}":
    ensure  => $ensure,
    require => Package[$::php71u::params::php_packages],
  } ~> Exec['php-apachectl-restart']

}
