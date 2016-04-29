$:.push File.expand_path('../lib', __FILE__)

require 'hive-appium/version'

Gem::Specification.new do |s|
  s.name        = 'hive_appium'
  s.version     = HiveAppium::VERSION
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.summary     = 'Appium management scripts'
  s.description = 'Start Appium, manages logs and directories'
  s.authors     = ['BBC', 'David Buckhurst', 'Asim Khan']
  s.email       = ['david.buckhurst@bbc.co.uk', 'asim.khan.ext@bbc.co.uk']
  s.files       = Dir['README.md', 'lib/**/*.rb', 'bin/res' ]
  s.executables = ['hive-appium']
  s.homepage    = 'https://github.com/bbc/hive-appium'
  s.license     = 'MIT'
end
