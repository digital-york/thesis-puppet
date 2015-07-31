class openjdk {
  package { 'openjdk-7-jdk':
    ensure => latest,
    #ensure => '7u79-2.5.5-0ubuntu0.12.04.1',
  }
}
