class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCycayOI87f2Dp5brcmawajNJNvfvsXYogHYbv7w4QNUBLfCQUJCy9Su0lJDFO1oXWm9bdgUrs6Az6zVQkZXkDqtojAqUFQQ2F9f76fMISYxhrjqzHtaI0+e8hnh0bO/Z+8R1ADgVR6wtuPALL/GxZgX9M3ObROn+l8kxam7jseusiFYcHQtoTxEE15l+GqUZCK/6iuWlvO0qTXeEe2wYABIrJ6mBF3BU6cgU0ORWMtVJaWUroOZdQcgSz/VOwLVSDZX/wEGKYtEuV0kr12Izl5cDc0U48CbSfgABE62Lw9GATcxh/jlES8xcXCbt9u87qEIErW0pI1a4bx5RoUqdfJ',
  }  
}
