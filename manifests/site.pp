node 'yf508-theses-puppet-1738031' {
  #include openjdk
  #include devlibs
  #include ruby

  #include rubygems

  #include apache
  
  #############include nginx
 
  include passenger
}

