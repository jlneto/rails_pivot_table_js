$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_pivot_table_js/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_pivot_table_js"
  s.version     = RailsPivotTableJs::VERSION
  s.authors     = ["José Lopes Neto"]
  s.email       = ["jose.lopes.santos.neto@gmail.com"]
  s.homepage    = "https://github.com/jlneto/rails_pivot_table_js"
  s.summary     = "RailsPivotTableJs."
  s.description = "RailsPivotTableJs"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', ['>= 3.2.6','< 5']

end
