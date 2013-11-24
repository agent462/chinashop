require File.join(File.dirname(__FILE__), 'lib', 'chinashop', 'version')

Gem::Specification.new do |s|
  s.name        = 'chinashop'
  s.version     = ChinaShop::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = "A library for btcchina"
  s.description = "A library for btcchina"
  s.authors     = ["Bryan Brandau"]
  s.email       = 'agent462@gmail.com'
  s.has_rdoc    = false
  s.licenses    = ['APACHE']
  s.homepage    ='http://github.com/agent462/chinashop'

  # s.add_dependency('rainbow', '1.1.4')

  s.add_development_dependency('rspec')
  s.add_development_dependency('rubocop')

  s.files         = Dir.glob('{lib}/**/*') + %w[chinashop.gemspec README.md]
  # s.executables   = Dir.glob('bin/**/*').map { |file| File.basename(file) }
  s.require_paths = ['lib']
end
