class Flat < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :owner, class_name: "User"

  has_many :pictures
  accepts_nested_attributes_for :pictures

  has_many :bookings

  has_many :bookers, through: :bookings


  def belongs_to?(user)
    self.owner == user #on peut utiliser owner == user et se passer du self.
  end



end


