node 'thesis' {
  include openjdk
  include devlibs
  include ruby

  include rubygems

  notice("Installing nginx...")
  package { 'nginx': 
    ensure => installed,
    #require => Package['nginx-passenger']
  }
  notice("done.")
  
  notice("Installing nginx...")
  include passenger
  notice("done.")
}

