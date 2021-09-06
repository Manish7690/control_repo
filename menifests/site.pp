node default { 
  file { '~/README':
    ensure => file,
    content => 'This is a Readme',
  }
}
