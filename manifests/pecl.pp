define php70u::pecl (
  $ensure = $::php70u::params::php_package_ensure
) {
  include ::php70u

  $extension = $title

  package { $extension:
    ensure   => $ensure,
    provider => 'pecl',
    require  => Package[$::php70u::params::php_packages],
  }

}
