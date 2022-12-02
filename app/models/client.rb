class Client < ApplicationRecord
  has_many :events
  has_many :records, through: :events
  belongs_to :employees,
end
