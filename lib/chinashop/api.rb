require 'openssl'
require 'base64'
require 'json'
require 'net/https'
require 'uri'

module ChinaShop
  module Api
    attr_reader :api_uri

    def initialize
      @api_uri = 'https://vip.btcchina.com/api_trade_v1.php'
    end

    def post(opts = {})
      method = opts[:method]
      params = opts[:params] || []
      tonce = (Time.now.to_f * 1000000).to_i
      query_string = "tonce=#{tonce}&accesskey=#{key}&requestmethod=post&id=#{tonce}&method=#{method}&params=#{params.join(',')}"
      puts query_string
      hash = OpenSSL::HMAC.hexdigest('sha1', secret, query_string)
      auth = Base64.encode64("#{key}:#{hash}").gsub("\n", '')
      uri = URI.parse(api_uri)
      http = Net::HTTP.new(uri.host, uri.port)
      http.read_timeout = 15
      http.open_timeout = 5
      http.use_ssl = true
      headers = {
                  'Content-Type' => 'application/json-rpc',
                  'Authorization' => "Basic #{auth}",
                  'Json-Rpc-Tonce' => "#{tonce}"
                }
      req = Net::HTTP::Post.new(api_uri, initheader = headers)
      req.body = JSON.generate('method' => method, 'params' => params, 'id' => tonce)
      JSON.parse(http.request(req).body)
    end

    def get(uri)
      uri = URI.parse(uri)
      http = Net::HTTP.new(uri.host, uri.port)
      http.read_timeout = 15
      http.open_timeout = 5
      http.use_ssl = true
      req = Net::HTTP::Get.new(uri.request_uri)
      JSON.parse(http.request(req).body)
    end

  end
end
