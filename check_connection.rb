# Check database connection with ActiveRecord

require './config/environment.rb'
begin
  ActiveRecord::Base.establish_connection
  ActiveRecord::Base.connection
  puts "Connected" if ActiveRecord::Base.connected?
  puts "Failed to connect" unless ActiveRecord::Base.connected?
rescue => e
  puts e.backtrace
end
