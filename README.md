php71u
======

An alternative installation of PHP from IUS.

Samples
-------
```
include php71u
```
```
php71u::config {
  'Date/date.timezone': value => 'America/New_York';
}
```
```
php71u::modules { 'bcmath': ensure => 'latest', }
```

License
-------
GPL3

Contact
-------
breauxaj AT gmail DOT com