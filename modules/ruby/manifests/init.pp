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

# make sure get rvm installed before using this module
# See commands in Vagrantfile
# Also, need to specify the additional module path in the command: /etc/puppet/modules and use rvmsudo insteadof sudo to get env vars
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
