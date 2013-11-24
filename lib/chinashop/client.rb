require 'chinashop/config'
require 'chinashop/api'
require 'chinashop/account'
require 'chinashop/ticker'

module ChinaShop
  class Client
    include ChinaShop::Config
    include ChinaShop::Api

    def account
      Account.new(post(:method => 'getAccountInfo'))
    end

    def orders
      post(:method => 'getOrders')
    end

    def market_depth
      post(:method => 'getMarketDepth2')
    end

    def buy
      post(:method => 'buyOrder', :params => [price, amount])
    end

    def sell
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
