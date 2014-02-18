class Flat < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :owner, class_name: "User"
end
