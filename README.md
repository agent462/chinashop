The start of a btcchina library.  The btcchina api is currently very basic so don't expect any magic.

Usage
--------
````
require 'chinashop'

ChinaShop.configure do |config|
  config.key = 'your-key-here'
  config.secret = 'your-secret-here'
end

puts ChinaShop.ticker.high
puts ChinaShop.account.balance.btc
````

# Configuration
Apply a key and secret to use the account and trading features.

````
ChinaShop.configure do |config|
  config.key = 'your-key-here'
  config.secret = 'your-secret-here'
end
````

# Ticker

Returns the ticker information.  Accessed via ChinaShop.ticker. The following methods are available:

* `high`
* `low`
* `buy`
* `sell`
* `last`
* `vol`

# Account

Returns the user account information.  Configuration is required.  The following methods are available:
* `username`
* `account`
* `balance`
* `frozen`
* `deposit_address`

# Market Depth

Returns the Market Depth os the btcchina exchange.  The following methods are available:

* `bids`
* `asks`

