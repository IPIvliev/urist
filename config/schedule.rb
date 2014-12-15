set :environment, "production"
set :output, {:error => "log/cron_error.log", :standard => "log/cron.log"}

 every 1.day, :at => '08:00 am' do
  rake "csv:add_values"
 end