class devlibs {
  notice("Installing packed software libraries ... ")
  $dependencies = ['autoconf','automake','bison','build-essential','curl','git-core','libapr1','libaprutil1','libc6-dev','libltdl-dev','libreadline6','libreadline6-dev','libsqlite3-dev','libssl-dev','libtool','libxml2-dev','libxslt-dev','libxslt1-dev','libyaml-dev','ncurses-dev','nodejs','openssl','sqlite3','zlib1g','zlib1g-dev','git']
  package { $dependencies:
    ensure => present,
  }
  notice("done.")
}
