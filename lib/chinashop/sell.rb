module ChinaShop
  class Sell
    attr_accessor :all, :result

    def initialize(buy = {})
      self.all    = buy
      self.result = buy['result']
    end

  end
end
