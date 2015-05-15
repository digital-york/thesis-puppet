class devlibs {
  notice("Installing packed software libraries ... ")
  $dependencies = ['autoconf','automake']
  package { $dependencies:
    ensure => present,
  }
  notice("done.")
}
