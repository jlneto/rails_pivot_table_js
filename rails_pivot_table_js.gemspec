$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_pivot_table_js/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_pivot_table_js"
  s.version     = RailsPivotTableJs::VERSION
  s.authors     = ["José Lopes Neto"]
  s.email       = ["jose.neto@taxweb.com.br"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsPivotTableJs."
  s.description = "TODO: Description of RailsPivotTableJs."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"

  s.add_development_dependency "sqlite3"
end
