class Record < ApplicationRecord
  has_many :events
  has_many :clients, through: :events
  hae_many :employees, through: :events
end
