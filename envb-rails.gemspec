require File.expand_path('../lib/envb/rails/version', __FILE__)

Gem::Specification.new do |g|
  g.name          = 'envb-rails'
  g.version       = Envb::Rails::VERSION
  g.authors       = 'Joe Bilt'
  g.email         = 'code@joebilt.com'
  g.homepage      = 'http://github.com/joedynamite/envb-rails'
  g.summary       = 'A simple way to display your Rails environment name.'
  g.description   = 'A banner that displays in your layout containing the Rails environment name.'
  g.files         = `git ls-files`.split("\n") - %w(.gitignore)
  g.require_paths = %w(lib)

  g.add_dependency 'haml'
end
