require 'ostruct'

module ChinaShop
  class Account
    attr_accessor :username, :account, :balance

    def initialize(account = {})
      self.account = account
      self.username = account["result"]["profile"]["username"]
      self.balance = OpenStruct.new(:btc => account['result']['balance']['btc']['amount'], :cny => account['result']['balance']['cny']['amount'])
    end

  end
end
