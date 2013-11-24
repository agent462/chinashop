The start of a btcchina library.  The btcchina api is currently very basic so don't expect any magic.

Usage
--------
require 'chinashop'

ChinaShop.configure do |config|
  config.key = 'your-key-here'
  config.secret = 'your-secret-here'
end

puts ChinaShop.ticker
