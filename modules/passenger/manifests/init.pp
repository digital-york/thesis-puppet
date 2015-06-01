class passenger { 
  notice("Installing Passenger ... ")
  package { 'rake':
    ensure => latest,
    provider => 'gem',
  }
  package { 'rack':
    ensure => latest,
    provider => 'gem',
  }
  package { 'passenger':
    ensure => latest,
    provider => 'gem',
  }
  notice("Installing Passenger done. ")
}

