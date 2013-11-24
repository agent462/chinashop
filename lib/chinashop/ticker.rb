module ChinaShop
  class Ticker
    attr_accessor :ticker, :high, :low, :buy, :sell, :last, :vol

    def initialize(ticker = {})
      self.ticker = ticker['ticker']
      self.high   = ticker['ticker']['high']
      self.low    = ticker['ticker']['low']
      self.buy    = ticker['ticker']['buy']
      self.sell   = ticker['ticker']['sell']
      self.last   = ticker['ticker']['last']
      self.vol    = ticker['ticker']['vol']
    end

  end
end
