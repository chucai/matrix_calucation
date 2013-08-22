$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "matrix_calucation/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "matrix_calucation"
  s.version     = MatrixCalucation::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of MatrixCalucation."
  s.description = "TODO: Description of MatrixCalucation."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.14"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec"
end
