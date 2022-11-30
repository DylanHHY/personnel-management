class Client < ApplicationRecord
  has_many :events
  has_many :records, through: :events
  has_many :employees, through: :events
end
