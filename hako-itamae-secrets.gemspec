lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "hako-itamae-secrets"
  spec.version       = '0.1.0'
  spec.authors       = ["Kasumi Hanazuki"]
  spec.email         = ["kasumi@rollingapple.net"]

  spec.summary       = %q{Provide variables to hako using Itamae::Secrets.}
  spec.description   = %q{Provide variables to hako using Itamae::Secrets.}
  spec.homepage      = "https://github.com/hanazuki/hako-itamae-secrets"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'hako'
  spec.add_dependency 'itamae-secrets'
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
