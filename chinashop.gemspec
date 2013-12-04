require File.join(File.dirname(__FILE__), 'lib', 'chinashop', 'version')

Gem::Specification.new do |s|
  s.name        = 'chinashop'
  s.version     = ChinaShop::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "A library for the btcchina exchange"
  s.description = "A library for the btcchina exchange"
  s.authors     = ["Bryan Brandau"]
  s.email       = 'agent462@gmail.com'
  s.has_rdoc    = false
  s.licenses    = ['APACHE']
  s.homepage    ='http://github.com/agent462/chinashop'

  s.add_development_dependency('rspec')
  s.add_development_dependency('rubocop')

  s.files         = Dir.glob('{lib}/**/*') + %w[chinashop.gemspec README.md]
  s.require_paths = ['lib']
end
