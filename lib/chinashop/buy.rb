module ChinaShop
  class Buy
    attr_accessor :all, :result

    def initialize(buy = {})
      self.all    = buy
      self.result = buy['result']
    end

  end
end
