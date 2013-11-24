module ChinaShop
  module Config
    attr_accessor :key, :secret

    def configure
      yield self
    end

  end
end
