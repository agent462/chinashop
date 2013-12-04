module ChinaShop
  class Order
    attr_accessor :all, :id, :type, :price, :currency, :amount, :amount_original, :date, :status

    def initialize(order = {})
      self.all      = order['result']['order']
      self.id       = order['result']['order']['id']
      self.type     = order['result']['order']['type']
      self.price    = order['result']['order']['price']
      self.currency = order['result']['order']['currency']
      self.amount   = order['result']['order']['amount']
      self.amount_original = order['result']['order']['amount_original']
      self.date     = order['result']['order']['date']
      self.status   = order['result']['order']['status']
    end

  end
end
