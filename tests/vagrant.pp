node default {
  include ::php70u
  Yumrepo <| |> -> Package <| provider != 'rpm' |>

  package { 'gcc': ensure => 'present' }
  package { 'httpd': ensure => 'present' }
  package { 'openssl-devel': ensure => 'present' }

  php70u::pecl { 'xdebug': ensure => 'present' }
  php70u::pecl { 'yaconf': ensure => 'present' }

}
