# Installs square/maximum-awesome

# Examples
#
#   include maximumawesome
#
#   class { 'maximumawesome':
#     repo => 'drewtempelmeyer/vimfiles'
#   }
#
class maximumawesome( $repo = 'square/maximum-awesome' ) {

  repository {
    'maximumawesome':
      source   => $repo,
      provider => 'git',
      path     => "${::boxen_srcdir}/maximumawesome"
  }

  exec { 'rake':
    command => "cd ${::boxen_srcdir}/maximumawesome && rake",
    creates => "${::boxen_home}/.vim",
    require => [
      Repository['maximumawesome']
    ]
  }

}
