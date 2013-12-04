module ChinaShop
  class OrderBook
    attr_accessor :all

    def initialize(order_book = {})
      self.all = order_book
    end

  end
end
