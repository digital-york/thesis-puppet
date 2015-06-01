class rubygems {
  notice("Installing Ruby gems - rails ")
  package { 'rails':
    ensure => latest,
    provider => 'gem',
  }
  notice("done.")
}
