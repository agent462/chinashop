require 'ostruct'

module ChinaShop
  class Account
    attr_accessor :username, :account, :balance, :frozen, :deposit_address

    def initialize(account = {})
      self.account = account
      self.username = account['result']['profile']['username']
      self.balance = OpenStruct.new(:btc => account['result']['balance']['btc']['amount'], :cny => account['result']['balance']['cny']['amount'])
      self.frozen = OpenStruct.new(:btc => account['result']['frozen']['btc']['amount'], :cny => account['result']['frozen']['cny']['amount'])
      self.deposit_address = account['result']['profile']['btc_deposit_address']
    end

  end
end
