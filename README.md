php70u
======

An alternative installation of PHP from IUS.

Samples
-------
```
include php70u
```
```
php70u::config {
  'Date/date.timezone': value => 'America/New_York';
}
```
```
php70u::modules { 'bcmath': ensure => 'latest', }
```

License
-------
GPL3

Contact
-------
breauxaj AT gmail DOT com