require 'chinashop/config'
require 'chinashop/api'
require 'chinashop/account'
require 'chinashop/ticker'
require 'chinashop/orders'
require 'chinashop/market_depth'

module ChinaShop
  class Client
    include ChinaShop::Config
    include ChinaShop::Api

    def account
      Account.new(post(:method => 'getAccountInfo'))
    end

    def orders
      Orders.new(post(:method => 'getOrders'))
    end

    def market_depth
      MarketDepth.new(post(:method => 'getMarketDepth2'))
    end

    def buy(price, amount)
      post(:method => 'buyOrder', :params => [price, amount])
    end

    def sell(price, amount)
      post(:method => 'sellOrder', :params => [price, amount])
    end

    def transactions
      post(:method => 'getTransactions')
    end

    def deposits
      post(:method => 'getDeposits', :params => ['BTC'])
    end

    def ticker
      Ticker.new(get('https://vip.btcchina.com/bc/ticker'))
    end

    def order_book
      get('https://vip.btcchina.com/bc/orderbook')
    end

    def trades
      get('https://vip.btcchina.com/bc/trades')
    end

  end
end
