# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pronto/pronto_simplecov/version'

Gem::Specification.new do |spec|
  spec.name          = "pronto-simplecov"
  spec.version       = Pronto::ProntoSimplecov::VERSION
  spec.authors       = ["Dominik Sander"]
  spec.email         = ["git@dsander.de"]

  spec.summary       = %q{Pronto runner for Simplecov, reports changed lines without coverage.}
  spec.homepage      = "https://github.com/dsander/pronto-simplecov"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.files         = Dir['CHANGELOG.md', 'LICENSE.txt', 'lib/**/*', 'bin/*']
  spec.bindir        = "exe"
  spec.executables   = []
  spec.test_files    = Dir['spec/**/*']
  spec.require_paths = ["lib"]


  spec.add_dependency('pronto', '~> 0.10.0')
  spec.add_dependency('simplecov')
  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
