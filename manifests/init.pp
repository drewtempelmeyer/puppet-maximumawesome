class maximumawesome {

  repository {
    source   => 'square/maximum-awesome',
    provider => 'git',
    path     => "${boxen::config::srcdir}/maximumawesome"
  }

  exec { "rake":
    command => "cd ${boxen::config::srcdir}/maximumawesome && rake",
    creates => "${boxen::config::srcdir}/.vim"
  }

}
