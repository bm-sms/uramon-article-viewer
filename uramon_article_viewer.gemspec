$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "uramon_article_viewer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "uramon_article_viewer"
  s.version     = UramonArticleViewer::VERSION
  s.authors     = ["Kenji Okimoto"]
  s.email       = ["okimoto@clear-code.com"]
  s.homepage    = ""
  s.summary     = "Summary of UramonArticleViewer."
  s.description = "Description of UramonArticleViewer."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5"
  s.add_dependency "faraday", "~> 0.9.2"
  s.add_dependency "haml-rails"

  s.add_development_dependency "sqlite3"
end
