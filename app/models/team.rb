class Team < ApplicationRecord
  has_many :players
  has_many :match
  validates :name, :presence => true, :uniqueness => true
end
