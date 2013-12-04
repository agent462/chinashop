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

Returns the ticker information.  Accessed via `ChinaShop.ticker`. The following methods are available:

* `all`
* `high`
* `low`
* `buy`
* `sell`
* `last`
* `vol`    

````
ChinaShop.ticker.high
````

# Account

Returns the user account information.  Configuration is required.  Accessed via `ChinaShop.account`. The following methods are available:
* `all`
* `username`
* `balance`
* `frozen`
* `deposit_address`

````
ChinaShop.account.balance.btc
````
# Market Depth

Returns the Market Depth of the btcchina exchange.  Accessed via `ChinaShop.market_depth`. The following methods are available:
* `all`
* `bids`
* `asks`

````
ChinaShop.market_depth.bids
````

# Buy

Places a Bid order for the btcchina exchange.  Accessed via `ChinaShop.buy`. The following methods are available:
* `all`
* `id`
* `result`

````
ChinaShop.buy(:price => 6030, :amount => 0.009)
````

# Sell

Places a Ask order for the btcchina exchange.  Accessed via `ChinaShop.sell`. The following methods are available:
* `all`
* `id`
* `result`

````
ChinaShop.sell(:price => 6030, :amount => 0.009)
````

License and Author
==================
Author:: Bryan Brandau <agent462@gmail.com>

Copyright:: 2013, Bryan Brandau

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
