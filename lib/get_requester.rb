require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    def initialize(url)
        uri = URI.parse(URL)
        @response = Net::HTTP.get_response(uri)
    end

    def get_response_body
        @response.body
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end
end