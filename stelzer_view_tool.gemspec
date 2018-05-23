
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "stelzer_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "stelzer_view_tool"
  spec.version       = StelzerViewTool::VERSION
  spec.authors       = ["Chris Stelzer"]
  spec.email         = ["chris.j.stelzer@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications I use.}
  spec.description   = %q{Provides gnerated HTML data for Rails applications.}
  spec.homepage      = "http://www.chrisstelzer.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
