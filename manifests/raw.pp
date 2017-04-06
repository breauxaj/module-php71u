define php71u::raw (
  $ensure = present,
  $content
) {
  include ::php71u

  file { "/etc/php.d/${name}.ini":
    ensure  => $ensure,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => $content,
    require => Package[$::php71u::params::php_packages],
  } ~> Exec['php-apachectl-restart']

}
