class Venue < ApplicationRecord
  validates :location, :presence => true, :uniqueness => true
end
