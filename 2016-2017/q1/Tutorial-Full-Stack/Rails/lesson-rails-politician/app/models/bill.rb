class Bill < ApplicationRecord
  has_and_belongs_to_many :politicians
end
