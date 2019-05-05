class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :item
  # belongs_to :notifications_feed, optional: true

  def self.check
    puts Rental.all.last(2)
    Rental.all.last(2).each do |rental|
      hours = ((DateTime.strptime(rental.date_end_server, "%m/%d/%Y %H:%M:%S %Z").strftime("%Q").to_f - DateTime.now.strftime("%Q").to_f)/3600000)
      puts hours
      if (hours < 2 && hours > 0)
        # puts 'expiring'
        rental.update(status: 'expiring')

      elsif (hours < 0)
        # puts 'expired'

        rental.update(status: 'expired')
        puts rental.status
      else
        puts "not ending soon"
      end
    end
  end

end
