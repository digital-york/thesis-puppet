#class ruby {
#  notice("Installing Ruby ... ")
#  
#  package { 'ruby':
#    ensure => latest,
#  }
#
#  
#  notice("Installed Ruby.")
#}

class ruby {
  include rvm
  
  rvm_system_ruby {
    'ruby-2.2.2': ensure => 'present', default_use => 'true';
  }

  rvm_gem {
    'ruby-2.2.2/bundler': ensure => latest;
    #'ruby-2.2.2/rails':   ensure => latest;
    'ruby-2.2.2/rails':   ensure => '4.2.1';
    'ruby-2.2.2/rake':    ensure => latest;
  }
}
