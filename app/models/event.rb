class Event < ApplicationRecord
  belongs_to :employee
  belongs_to :client
  belongs_to :record
end
