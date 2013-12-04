module ChinaShop
  class Buy
    attr_accessor :all, :id, :result

    def initialize(buy = {})
      self.all    = buy
      self.id     = buy['id']
      self.result = buy['result']
    end

  end
end
