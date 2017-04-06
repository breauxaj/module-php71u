define php71u::config (
  $value
) {
  include ::php70u

  $key = $title

  $context = '/files/etc/php.ini'

  augeas { "php_ini/${key}":
    context => $context,
    onlyif  => "get ${key} != '${value}'",
    changes => "set ${key} '${value}'",
    require => Package[$::php71u::params::php_packages],
  } ~> Exec['php-apachectl-restart']

}
