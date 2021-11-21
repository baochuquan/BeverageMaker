require_relative 'lib/BeverageMaker/version'

Gem::Specification.new do |spec|
  spec.name          = "BeverageMaker"
  spec.version       = BeverageMaker::VERSION
  spec.authors       = ["baochuquan"]
  spec.email         = ["baochuquan@163.com"]

  spec.summary       = "Beverage Maker"
  spec.description   = "A Command Line Tool Example"
  spec.homepage      = "https://github.com/baochuquan/BeverageMaker"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/baochuquan/BeverageMaker"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/baochuquan/BeverageMaker"
  spec.metadata["changelog_uri"] = "https://github.com/baochuquan/BeverageMaker"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'claide', '~> 1.0.3'
end
