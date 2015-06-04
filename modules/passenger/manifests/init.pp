class passenger { 
  #notice("Installing Passenger ... ")
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
    ensure => '5.0.8',
    provider => 'gem',
  }
  #notice("Installing Passenger done. ")
}

