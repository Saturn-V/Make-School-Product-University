require 'test_helper'

class DogTest < ActiveSupport::TestCase

    def setup
        @dog = Dog.new(name: "Dogo", breed: "Supa Dogo", price_hr: 900)
    end

    test "name should be at least min length" do
        @dog.name = "A"
        assert_not @dog.valid?
    end

    test "the truth" do
        assert true
    end
end
