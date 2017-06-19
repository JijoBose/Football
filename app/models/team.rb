class Team < ApplicationRecord
  has_many :player
  has_many :match
end
