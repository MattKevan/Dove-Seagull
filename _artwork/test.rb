require 'net/http'
require 'open-uri'
require 'json'
 
apiKey = '2o8rrgg0aub629ntaa7l7c89'
shopID = '12853550'
offset = '0'
stopChar = '|'

listing_url = "https://openapi.etsy.com/v2/shops/#{shopID}/listings/active?method=GET&api_key=#{apiKey}&limit=100&offset=#{offset}"
listing_uri = URI(listing_url)

listing_response = Net::HTTP.get(listing_uri)
listing_parsed = JSON.parse(listing_response)

numberof = listing_parsed["count"]

print listing_response
