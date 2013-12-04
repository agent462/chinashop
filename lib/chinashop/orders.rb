module ChinaShop
  class Orders
    attr_accessor :all

    def initialize(orders = {})
      self.all = orders['result']['order']
    end

  end
end
