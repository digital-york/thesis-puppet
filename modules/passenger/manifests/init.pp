class { 'passenger': 
  #notice("Installing Passenger ... ")
  passenger_version     => '2.2.11',
  passenger_provider    => 'gem',
  passenger_package     => 'passenger',
  gem_path              => '/usr/local/lib/ruby/gems/2.1.0/gems',
  gem_binary_path       => '/usr/local/lib/ruby/gems/2.1.0/gems/passenger-4.0.55',
  #mod_passenger_location => '/usr/local/lib/ruby/gems/2.1.0/gems/passenger-4.0.55/ext/apache2/mod_passenger.so',
  include_build_tools   => true,
}

