module ChinaShop
  class MarketDepth
    attr_accessor :market_depth, :bids, :asks

    def initialize(depth = {})
      self.market_depth = depth['result']
      self.bids = depth['result']['market_depth']['bid']
      self.asks = depth['result']['market_depth']['ask']
    end

  end
end
