class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :item
  # belongs_to :notifications_feed, optional: true

  def self.check
      Rental.all.each do |rental|
        hours = ((DateTime.strptime(rental.date_end_server, "%m/%d/%Y %H:%M:%S %Z").strftime("%Q").to_f - DateTime.now.strftime("%Q").to_f)/3600000)
        puts hours
        if (hours < 2 && hours > 0)
          rental.update(status: 'expiring', read: false)
          puts 'expiring'
        elsif (hours < 0 && rental.status == 'expired' && rental.read == true)
          puts 'expired and read'
        elsif (hours < 0 && rental.status == 'expiring')
          rental.update(status: 'expired', read: false)
          puts 'expired'
        else
          puts "not ending soon"
        end
      end
    end

end
