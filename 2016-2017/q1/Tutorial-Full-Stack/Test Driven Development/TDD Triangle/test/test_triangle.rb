require "minitest/autorun"
require "minitest/reporters"
require "./lib/triangle"
Minitest::Reporters.use!

class TestTriangle < Minitest::Test
    def test_constructor
        assert Triangle.new([])
    end

    def test_is_valid
        invalidTriangle = Triangle.new([1,1,100])
        assert !invalidTriangle.isValid?

        validTriangle = Triangle.new([1,2,2])
        assert validTriangle.isValid?
    end

    def test_is_right
        rightTriangle = Triangle.new([3, 4, 5])
        assert rightTriangle.isRight?

        randomTriangle  = Triangle.new([1,1,1])
        assert !randomTriangle.isRight?
    end

    def test_is_equilateral
        equalateralTriangle = Triangle.new([7,7,7])
        assert equalateralTriangle.isEquilateral?
        
        randomTriangle = Triangle.new([1,1,4])
        assert !randomTriangle.isEquilateral?
    end
end
