class openjdk {
  notice("Installing openjdk 7 ... ")
  package { 'openjdk-7-jdk':
    ensure => latest,
  }
  notice("Installing openjdk 7 done.")
}
