class passenger { 
  #notice("Installing Passenger ... ")
  
  # required for passenger gem 
  package { "apache2-prefork-dev": 
    ensure => installed 
  } 
  # required for passenger-apache-module 
  package { "libcurl4-openssl-dev": 
    ensure => installed 
  }   
  
  
  package { 'rake':
    #ensure => latest,
    ensure => '10.4.2',
    provider => 'gem',
  }
  package { 'rack':
    #ensure => latest,
    ensure => '1.6',
    provider => 'gem',
  }
  package { 'passenger':
    #ensure => latest,
    #user     => root,
    #group    => root,
    ensure => '5.0.8',
    provider => 'gem',
  }
  
  #ENV.each do |k,v|
  #  puts k
  #end

  #$apache_module_installer = "/usr/local/rvm/rubies/"+$RUBY_VERSION.to_s+"/bin/passenger-install-apache2-module --auto"

  exec { "apt-get -y update":
    user => root,
    group => root,
  }
  
  exec { "passenger-install-apache2-module --auto": 
    #user => root, 
    #group => root, 
    alias => "passenger_apache_module", 
    require => Package["apache2-prefork-dev","libcurl4-openssl-dev", "passenger"], 
    before => File["passenger_conf"] 
  } 
  file { "/etc/apache2/mods-available/passenger.conf": 
    mode => "644", 
    owner => root, 
    group => root, 
    alias => "passenger_conf", 
    source => 'puppet:///modules/passenger/passenger.conf', 
    before => File["passenger_load"] 
  } 
  file { "/etc/apache2/mods-available/passenger.load": 
    mode => "644", 
    owner => root, 
    group => root, 
    alias => "passenger_load", 
    #notify => Service["apache2"], 
    source => "puppet:///modules/passenger/passenger.load", 
    before => Exec["enable_passenger"] 
  }   
  exec { "a2enmod passenger": 
    user => root, 
    alias => "enable_passenger" 
  }
  
  #notice("Installing Passenger done. ")
}

