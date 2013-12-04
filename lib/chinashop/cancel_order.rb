module ChinaShop
  class CancelOrder
    attr_accessor :all

    def initialize(cancel = {})
      self.all = cancel['result']
    end

  end
end
