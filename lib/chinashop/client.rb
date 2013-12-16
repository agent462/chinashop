require 'chinashop/config'
require 'chinashop/api'
require 'chinashop/account'
require 'chinashop/ticker'
require 'chinashop/orders'
require 'chinashop/order'
require 'chinashop/cancel_order'
require 'chinashop/buy'
require 'chinashop/sell'
require 'chinashop/deposits'
require 'chinashop/transactions'
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

    def order(id)
      Order.new(post(:method => 'getOrder', :params => [id]))
    end

    def market_depth
      MarketDepth.new(post(:method => 'getMarketDepth2'))
    end

    def buy(h = {})
      Buy.new(post(:method => 'buyOrder', :params => ["#{h[:price].to_f.round(5)}", "#{h[:amount].to_f.round(8)}"]))
    end

    def sell(h = {})
      Sell.new(post(:method => 'sellOrder', :params => ["#{h[:price].to_f.round(5)}", "#{h[:amount].to_f.round(8)}"]))
    end

    def cancel_order(id)
      CancelOrder.new(post(:method => 'cancelOrder', :params => [id]))
    end

    def transactions
      Transactions.new(post(:method => 'getTransactions'))
    end

    def deposits
      Deposits.new(post(:method => 'getDeposits', :params => ['BTC']))
    end

    def ticker
      Ticker.new(get('https://data.btcchina.com/data/ticker'))
    end

    def order_book
      get('https://data.btcchina.com/data/orderbook')
    end

    def trades
      get('https://data.btcchina.com/data/trades')
    end

    def trade_history(since = nil)
      if since.nil?
        get('https://data.btcchina.com/data/historydata')
      else
        get("https://data.btcchina.com/data/historydata?since=#{since}")
      end
    end

  end
end
