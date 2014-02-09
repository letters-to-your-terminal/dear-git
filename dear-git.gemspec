# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dear/git/version'

Gem::Specification.new do |spec|
  spec.name          = "dear-git"
  spec.version       = Dear::Git::VERSION
  spec.authors       = ["Kristen Mills"]
  spec.email         = ["kristen@kristen-mills.com"]
  spec.summary       = "Write a letter to do git commands"
  spec.description   = "Write a letter to do git commands"
  spec.homepage      = "https://github.com/letters-to-your-terminal/dear-git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency 'treetop'
end
