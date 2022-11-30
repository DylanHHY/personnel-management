class Employee < ApplicationRecord
  has_many :events
  has_many :clients, through: :events
  has_many :records, through: :events
  belongs_to :role
  belongs_to :user
end
