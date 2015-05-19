node 'thesis' {
  include openjdk
  include devlibs
  include ruby

  include ruby-gems

  notice("Installing nginx...")
  package { 'nginx': 
    ensure => installed,
    #require => Package['nginx-passenger']
  }
  notice("done.")
  #include passenger
}

