class Dog < ActiveRecord::Base
    validates :name, length: { minimum: 2, maximum: 10 }
end
