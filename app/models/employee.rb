class Employee < ApplicationRecord
  has_many :events
  has_many :clients, through: :events
  has_many :records, through: :events
  belongs_to :role
  belongs_to :user

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

end
