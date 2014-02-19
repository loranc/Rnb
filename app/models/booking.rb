class Booking < ActiveRecord::Base
  belongs_to :booker_id
  belongs_to :flat_id
end
