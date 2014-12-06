# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'singapore_charitable_donations/version'

Gem::Specification.new do |spec|
  spec.name          = "singapore_charitable_donations"
  spec.version       = SingaporeCharitableDonations::VERSION
  spec.authors       = ["Vincent Paca", "Ronald Maravilla"]
  spec.email         = ["vpaca@payrollhero.com", "rmaravilla@payrollhero.com"]
  spec.summary       = "Calculators for Singapore Charitable Donations"
  spec.description   = "Calculators for Singapore Charitable Donations. Supports CDAC, ECF, MBMF, and SINDA."
  spec.homepage      = "https://github.com/payrollhero/singapore_charitable_donations"
  spec.license       = "BSD-3-Clause"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "codeclimate-test-reporter"

end
