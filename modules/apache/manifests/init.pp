class apache {
  package { 'apache2':
    ensure => present,
    require => Package['nginx'],
  }
  
  package { 'nginx': 
    ensure => absent,
  }
  
  service { 'apache2':
    require => Package['apache2'],
    ensure  => running,
    enable  => true,
    hasstatus => false,  # if hasstatus is false for a service, Puppet will instead look at the system process list and see if the service is listed in it.
  }
  
  #Creaet symlinks for apache modules
  file { '/etc/apache2/mods-enabled/headers.load':
    ensure => 'link',
    target => '/etc/apache2/mods-available/headers.load',
  }
  file { '/etc/apache2/mods-enabled/expires.load':
    ensure => 'link',
    target => '/etc/apache2/mods-available/expires.load',
  }
  
  file { '/etc/apache2/sites-available/default':
    source => 'puppet:///modules/apache/default',
    notify => Service['apache2'],
  }
}
