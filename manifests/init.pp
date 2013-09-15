class maximumawesome {

  repository {
    'maximumawesome':
      source   => 'square/maximum-awesome',
      provider => 'git',
      path     => "${::boxen_srcdir}/maximumawesome"
  }

  exec { "rake":
    command => "cd ${::boxen_srcdir}/maximumawesome && rake",
    creates => "${::boxen_home}/.vim",
    require => [
      Repository["maximumawesome"]
    ]
  }

}
