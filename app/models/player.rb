class Player < ApplicationRecord
  belongs_to :team
  has_one :role
end
