define php70u::modules (
  $ensure = $::php70u::params::php_package_ensure
) {
  include ::php70u

  $required = $title

  package { "php70u-${required}":
    ensure  => $ensure,
  }

}
