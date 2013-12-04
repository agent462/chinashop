module ChinaShop
  class Transactions
    attr_accessor :all, :buys, :sells, :last

    def initialize(trans = {})
      self.all = trans['result']['transaction']
    end

  end
end
