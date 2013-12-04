module ChinaShop
  class Deposits
    attr_accessor :all

    def initialize(deposits = {})
      self.all = deposits['result']['deposit']
    end

  end
end
