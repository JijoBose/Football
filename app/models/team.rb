class Team < ApplicationRecord
  has_many :player
  has_many :match
  validates :name, :presence => true, :uniqueness => true
end
