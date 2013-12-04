module ChinaShop
  class MarketDepth
    attr_accessor :all, :bids, :asks

    def initialize(depth = {})
      self.all  = depth['result']['market_depth']
      self.bids = depth['result']['market_depth']['bid']
      self.asks = depth['result']['market_depth']['ask']
    end

  end
end
