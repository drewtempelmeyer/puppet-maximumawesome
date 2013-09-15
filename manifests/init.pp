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
    cwd     => "${::boxen_srcdir}/maximumawesome",
    creates => "/Users/${::boxen_user}/.vimrc",
    require => [
      Repository['maximumawesome']
    ]
  }

}
