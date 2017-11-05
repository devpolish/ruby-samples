require 'rspotify'
RSpotify::authenticate(CLIENT_ID, API_KEY)
# driver = Selenium::WebDriver.for :firefox
artists = RSpotify::Artist.search(ARGV.join(' '))
unless artists.empty?
  artist = artists[0]
  driver = Selenium::WebDriver.for :firefox
  driver.navigate.to artist.external_urls["spotify"]
else
  puts "Cantante no encontrado"
end
