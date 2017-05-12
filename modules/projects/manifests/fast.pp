class projects::fast {
  boxen::project{ 'fast':
    nodejs       => '7.9.0',
    source     => 'roirevolution/fast-node'
  }
}
