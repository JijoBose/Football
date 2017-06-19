class Match < ApplicationRecord
  has_many :teams
  belongs_to :venue

  validates :title, :presence => true, :uniqueness => false
  validates :team1_id, :presence => true, :uniqueness => false
  validates :team2_id, :presence => true, :uniqueness => false
  validates :venue_id, :presence => true, :uniqueness => false
  validates :schedule, :presence => true, :uniqueness => false
end
