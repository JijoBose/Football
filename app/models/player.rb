class Player < ApplicationRecord
  belongs_to :team
  has_many :roles
  validates :name, :presence => true, :uniqueness => false
  validates :team_id, :presence => true, :uniqueness => false
end
