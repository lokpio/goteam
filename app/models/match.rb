class Match < ApplicationRecord
  has_many :teams
  belongs_to :sport
end
