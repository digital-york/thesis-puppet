node 'thesis' {
  include openjdk
  include devlibs
  include ruby

  include rubygems

  include apache
  #############include nginx
  
  include passenger
}

