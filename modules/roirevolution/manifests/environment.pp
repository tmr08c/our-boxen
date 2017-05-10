class roirevolution::environment {
  require homebrew
  require brewcask

  include java

  # Applications installed through `homebrew`
  package { 'cmake': ; }
  package { 'postgresql': ; }
  package { 'elixir': ; }
  package { 'redis': ; }

  # GUI Applications from `brewcask`
  package { 'google-chrome': provider => 'brewcask' }
  package { 'firefox': provider => 'brewcask' }
  package { 'slack': provider => 'brewcask' }
  package { 'caffeine': provider => 'brewcask' }

  # Include setup for projects 
  include projects::all
}
