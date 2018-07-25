
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "carrierwave/tencent_cos/version"

Gem::Specification.new do |spec|
  spec.name          = "carrierwave-tencent_cos"
  spec.version       = CarrierWave::TencentCos::VERSION
  spec.authors       = ["xia xiongjun"]
  spec.email         = ["xxjapp@gmail.com"]

  spec.summary       = %q{Add storage support for Tencent COS to CarrierWave}
  spec.description   = %q{Add storage support for Tencent COS to CarrierWave}
  spec.homepage      = "https://github.com/xxjapp/carrierwave-tencent_cos"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "tencent_cos_sdk", "~> 0.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
