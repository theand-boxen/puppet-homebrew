# Public: Variables for working with Homebrew
#
# Examples
#
#   require homebrew::config

class homebrew::config {
  include boxen::config

  $cachedir   = "${boxen::config::cachedir}/homebrew"
  $installdir = $::homebrew_root
  $libdir     = "${installdir}/lib"

  $cmddir     = "${installdir}/Library/Homebrew/cmd"
  $tapsdir    = "${installdir}/Library/Taps"

  $brewsdir   = "${tapsdir}/boxen/homebrew-brews"

  $min_revision = '791d9d11830811c59f5a768c59a89ce100ba292a'
}
