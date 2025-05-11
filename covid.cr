require "http/client"
require "json"

country = "Uzbekistan"
url = "https://disease.sh/v3/covid-19/countries/#{country}"

response = HTTP::Client.get(url)
data = JSON.parse(response.body)

cases = data["cases"].to_i
deaths = data["deaths"].to_i
recovered = data["recovered"].to_i

puts "Holatlar: #{cases}"
puts "Vafot: #{deaths}"
puts "Sog'aygan: #{recovered}"
