class projects::push {
  boxen::project{ 'push':
    ruby       => 'jruby-9.1.5.0',
    source     => 'roirevolution/push'
  }
}
