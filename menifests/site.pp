node default { 
  file { '/root/README':
    ensure => file,
    content => 'This is a Readme',
    }
  file { '/root/README':
    owner => 'root,
    }
}
