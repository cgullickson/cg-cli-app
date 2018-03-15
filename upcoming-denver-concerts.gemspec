
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "upcoming/version"

Gem::Specification.new do |spec|
  spec.name          = "upcoming"
  spec.version       = Upcoming::VERSION
  spec.authors       = ["'Chris Gullickson'"]
  spec.email         = ["'cgullickson5@gmail.com'"]

  spec.summary       = "summary"
  spec.description   = "description"
  spec.homepage      = "https://github.com/cgullickson/cg-cli-app"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "nokogiri"
  spec.add_development_dependency "pry"
end
