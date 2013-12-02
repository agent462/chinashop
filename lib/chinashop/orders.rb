module ChinaShop
  class Orders
    attr_accessor :orders

    def initialize(orders = {})
      orders = orders['result']
    end

  end
end
