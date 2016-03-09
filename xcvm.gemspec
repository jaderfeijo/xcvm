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

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'http://rubygems.org'
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["xcvm"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "plist", "~> 3.2.0"
end
