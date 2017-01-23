class Politician < ApplicationRecord
  has_many :staff_people
  has_and_belongs_to_many :bills
end
