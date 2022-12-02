class Employee < ApplicationRecord
  has_many :clients
  belongs_to :role
  belongs_to :user

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

end
