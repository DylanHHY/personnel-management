class Client < ApplicationRecord
  has_many :records
  belongs_to :employees
end
