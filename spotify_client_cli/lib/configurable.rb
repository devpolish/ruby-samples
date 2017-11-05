# This file load all configurations to enable our API
# Load our secrets credentials and other options
# If you want to use this file you could create a credentials.yml file at /config folder
# Example of *credentials.yml*
# ----------
# spotify:
#   client_id: CLIENT_ID
#   api_key: API_KEY

require 'selenium-webdriver'
module WebBrowser
  include Selenium
  # Set your browser here
  # Depending what browser is you will need the indicated web driver
  # Firefox uses geckodriver
  # Chrome uses chromedriver
  # Opera also uses chromedriver depending of your version read more at https://stackoverflow.com/a/26813266
  DRIVER = WebDriver.for :firefox
  CONFIG = YAML.load_file('../config/credentials.yml')
end
