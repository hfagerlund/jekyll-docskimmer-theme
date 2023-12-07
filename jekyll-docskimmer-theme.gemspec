# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = "jekyll-docskimmer-theme"
  spec.version       = "0.1.2"
  spec.authors       = ["Heini Fagerlund"]
  spec.email         = [""]

  spec.summary       = %q{An accessible minimal theme for Jekyll}
  spec.homepage      = "https://hfagerlund.github.io/jekyll-docskimmer-theme"
  spec.license       = "BSD-2-Clause"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.6"

  spec.add_development_dependency "bundler", ">= 1.16.1"
  spec.add_development_dependency "rake", "~> 10.0"
end
