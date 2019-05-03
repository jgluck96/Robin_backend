class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :item
  # belongs_to :notifications_feed, optional: true

  def check
    Rental.all.each do |rental|
      if (DateTime.now.strftime('%Q').to_i - DateTime.strptime(rental.date_end, "%m/%d/%Y %H:%M:%S").strftime('%Q').to_i)/3600000 < 2
        puts "hi"
      end
    end
  end

end
