# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron
set :chronic_options, hours24: true
# Example:
#
RAILS_ROOT = File.expand_path(File.dirname(__FILE__) + '/')
set :output, "#{path}/log/cron_log.log"
#
every 1.minute do
#   command "/usr/bin/some_great_command"
  runner "Rental.check", :environment => "development"
  # rake "my_task"
end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever
