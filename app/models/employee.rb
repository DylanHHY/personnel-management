class Employee < ApplicationRecord
  belongs_to :role
  has_many :events
  has_many :clients, through: :events
  hae_many :records, through: :events
end
