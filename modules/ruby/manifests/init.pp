class ruby {
  notice("Installing Ruby ... ")
  package { 'ruby':
    ensure => latest,
  }
  notice("Installed Ruby.")
}
