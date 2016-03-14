# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'xcvm/version'

Gem::Specification.new do |spec|
  spec.name          = "xcvm"
  spec.version       = Xcvm::VERSION
  spec.authors       = ["jaderfeijo"]
  spec.email         = ["jader.feijo@gmail.com"]

  spec.summary       = "Xcode Project Version Manager"
  spec.description   = "A version manager for Xcode projects"
  spec.homepage      = "https://github.com/jaderfeijo/xcvm"

  spec.files         = Dir['lib/*.rb', 'lib/xcvm/*.rb']
  spec.executables   = ["xcvm"]
  spec.require_path  = 'lib'

  spec.required_ruby_version = '~> 2.2'

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "plist", "~> 3.2.0"
end
