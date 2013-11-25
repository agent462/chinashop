module ChinaShop
  class Transactions
    attr_accessor :transactions, :buys, :sells, :last

    def initialize(trans = {})
      transactions = trans['result']['transaction']
    end

  end
end
