node default { 
  file { '/etc/README':
    ensure => file,
    content => 'This is a Readme',
    }
}
