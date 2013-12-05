The start of a btcchina library.  The btcchina api is currently very basic so don't expect any magic.

If you are feeling generous, throw me some btc: 13rhHcFx8AWej5F1VYAudHc1SupJMTJKZU

Usage
--------
````ruby
require 'chinashop'

ChinaShop.configure do |config|
  config.key = 'your-key-here'
  config.secret = 'your-secret-here'
end

puts ChinaShop.ticker.high
puts ChinaShop.account.balance.btc
````

## Configuration
Apply a key and secret to use the account and trading features.

````ruby
ChinaShop.configure do |config|
  config.key = 'your-key-here'
  config.secret = 'your-secret-here'
end
````

## Ticker

Returns the ticker information.  Accessed via `ChinaShop.ticker`. The following methods are available:

* `all`
* `high`
* `low`
* `buy`
* `sell`
* `last`
* `vol`    

````ruby
puts ChinaShop.ticker.high
````

## Account

Returns the user account information.  Configuration is required.  Accessed via `ChinaShop.account`. The following methods are available:
* `all`
* `username`
* `balance`
* `frozen`
* `deposit_address`

````ruby
puts ChinaShop.account.balance.btc
````
## Market Depth

Returns the Market Depth.  Accessed via `ChinaShop.market_depth`. The following methods are available:
* `all`
* `bids`
* `asks`

````ruby
ChinaShop.market_depth.bids
````

## Buy

Places a Bid order for the btcchina exchange.  Accessed via `ChinaShop.buy`. The following methods are available:
* `all`
* `result`

````ruby
b = ChinaShop.buy(:price => 6030, :amount => 0.009)
puts b.result
````

## Sell

Places a Ask order for the btcchina exchange.  Accessed via `ChinaShop.sell`. The following methods are available:
* `all`
* `result`

````ruby
s = ChinaShop.sell(:price => 6030, :amount => 0.009)
puts s.result
````

## Orders

Lists all the open orders.  Accessed via `ChinaShop.orders`. The following methods are available:
* `all`

````ruby
puts ChinaShop.orders.all
````

## Order

Get a single order.  Accessed via `ChinaShop.order`. The following methods are available:
* `all`
* `id`
* `type`
* `price`
* `currency`
* `amount`
* `amount_original`
* `date`
* `status`

````ruby
puts ChinaShop.order(823841).status
````

## Transactions

Lists recent transactions.  Accessed via `ChinaShop.transactions`. The following methods are available:
* `all`

````ruby
puts ChinaShop.transactions.all
````

## Deposits

Lists recent deposits.  Accessed via `ChinaShop.deposits`. The following methods are available:
* `all`

````ruby
puts ChinaShop.deposits.all
````

## Trades

Returns recent trades.  Accessed via `ChinaShop.trades`.

````ruby
puts ChinaShop.trades
````

## Order Book

Returns the current order book.  Accessed via `ChinaShop.order_book`.

````ruby
puts ChinaShop.order_book
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
