class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :flats, foreign_key: "owner_id"

  has_many :bookings, foreign_key: "booker_id"

  has_many :booked_flats, through: :bookings, source: :flat
  include Gravtastic
  gravtastic :size => 30
end


