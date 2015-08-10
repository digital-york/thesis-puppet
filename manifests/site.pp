node 'yf508-theses-puppet-1738031' {
  Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/", "/usr/local/rvm/gems/ruby-2.2.2@global/gems/passenger-5.0.8/bin" ] }

  #include openjdk
  #include devlibs
  #include ruby

  #include rubygems

  #include apache
  
  #############include nginx
 
  include passenger
}

