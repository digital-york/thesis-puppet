class openjdk {
  #notice("Installing openjdk 7 ... ")
  package { 'openjdk-7-jdk':
    #ensure => latest,
    ensure => '7u79-2.5.5-0ubuntu0.12.04.1',
  }
  #notice("Installing openjdk 7 done.")
}
