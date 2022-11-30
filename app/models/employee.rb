class Employee < ApplicationRecord
  belongs_to :role
  has_many :events
  has_many :clients, through: :events
  has_many :records, through: :events
end
