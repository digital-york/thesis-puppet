class nginx {
  package { 'apache2':
    ensure => absent,
  }
  
  package { 'nginx': 
#    ensure => present,
    ensure => '1:1.6.3-8.5.0.8~precise1',
    require => Package['apache2'],
  }
  
#  service { 'nginx':
#    require => Package['nginx'],
#    ensure  => running,
#    enable  => true,
#    hasstatus => false,  # if hasstatus is false for a service, Puppet will instead look at the system process list and see if the service is listed in it.
#  }
  
#  file { '/etc/nginx/sites-enabled/default':
#    source => 'puppet:///modules/nginx/passenger.conf',
#    notify => Service['nginx'],
#  }
}
