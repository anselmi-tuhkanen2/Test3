require 'rest-client'
require 'json'

module Jekyll_Get
  class Generator < Jekyll::Generator
    safe true
    priority :highest

    def generate(site)

      response = RestClient::Request.new(
        :method => :get,
        :url =>  'https://app.snipcart.com/api/products',
        :user => ENV['snipcart_api'],
        :password => '',
        :headers => { :accept => :json,
                      :content_type => :json }
      ).execute
      results = JSON.parse(response.to_str)
      
      inventory = {}
      results['items'].each do |val|
        inventory[val['userDefinedId']] = val['stock']
      end

      site.data['inventory'] = inventory
    end
  end
end
