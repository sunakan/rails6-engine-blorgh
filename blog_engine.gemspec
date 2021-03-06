$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "blog_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "blog_engine"
  spec.version     = BlogEngine::VERSION
  spec.authors     = ["sunakan"]
  spec.email       = ["sunakan03@gmail.com"]
  spec.homepage    = "https://github.com/sunakan/rails6-blog-engine"
  spec.summary     = "練習"
  spec.description = "練習"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "6.0.0.rc1"
  spec.add_dependency "webpacker", "~> 4.0"

  spec.add_development_dependency "webpacker", "~> 4.0"
  spec.add_development_dependency "pg", "~> 1.1.4"
  # rspec用
  spec.add_development_dependency "factory_bot_rails"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "capybara", ">= 2.15"
  spec.add_development_dependency "webdrivers"
  spec.add_development_dependency "sass-rails"
  spec.add_development_dependency "puma"
end
