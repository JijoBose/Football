class Role < ApplicationRecord
  belongs_to :match
  belongs_to :player
  validates :match_id, :presence => true, :uniqueness => false
  validates :player_id, :presence => true, :uniqueness => false
  validates :name, :presence => true, :uniqueness => false
end
