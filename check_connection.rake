desc "Check database connection with ActiveRecord"
namespace :db do
  task :check_connection do
  path = Rails.root.join('config', 'environment.rb')
  require path
  begin
    ActiveRecord::Base.establish_connection
    ActiveRecord::Base.connection
    puts "Connected" if ActiveRecord::Base.connected?
    puts "Failed to connect" unless ActiveRecord::Base.connected?
    rescue => e
      puts e.backtrace
    end
  end
end
