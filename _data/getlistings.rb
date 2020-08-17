require 'net/http'
require 'json'
 
apiKey = 'la8o1nc55c9m8t30z8z48y27'
shopID = '12853550'
offset = '0'
stopChar = '|'

listing_url = "https://openapi.etsy.com/v2/shops/#{shopID}/listings/active?method=GET&api_key=#{apiKey}&offset=#{offset}"
listing_uri = URI(listing_url)

listing_response = Net::HTTP.get(listing_uri)
listing_parsed = JSON.parse(listing_response)

File.open('listings2.yaml', 'w') do |file|
	file.puts "---"
	listing_info = listing_parsed["results"].each do |listing|

		fullTitle = listing["title"]
		shortTitle = fullTitle.split("#{stopChar}")[0]

		file.puts "-"
		file.puts "  title: #{shortTitle}"
		file.puts "  full-title: #{fullTitle}"
		file.puts "  listing_id: #{listing["listing_id"]}"
		file.puts "  url: #{listing["url"]}"
		file.puts "  section_id: #{listing["shop_section_id"]}"
		file.puts "  price: #{listing["price"]}"
		file.puts "  tags: #{listing["tags"]}"

		image_url = "https://openapi.etsy.com/v2/listings/#{listing["listing_id"]}/images?method=GET&api_key=#{apiKey}&limit=#{rateLimit}&offset=100&offset=100"
		image_uri = URI(image_url)

		image_response = Net::HTTP.get(image_uri)
		image_parsed = JSON.parse(image_response)

		count = 0
		image_parsed["results"].each do |image|
			file.puts "  image_570xN_url_#{count}: #{image["url_570xN"]}"
			file.puts "  image_fullxfull_url_#{count}: #{image["url_fullxfull"]}"
			count = count+1
		end
	end
end