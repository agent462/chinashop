module ChinaShop
  class Transactions
    attr_accessor :all

    def initialize(trans = {})
      self.all = trans['result']['transaction']
    end

  end
end
