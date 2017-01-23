class Triangle
    def initialize(sides)
        @sides = sides
    end

    def isValid?
        if @sides.count == 3
            puts "count correct"
            if @sides[0] != 0 && @sides[1] != 0 &&@sides[2] != 0
                puts "no side = 0"
                if check_sides(@sides[0], @sides[1], @sides[2]) && check_sides(@sides[2], @sides[0], @sides[1]) && check_sides(@sides[1], @sides[2], @sides[0])
                    return true
                end
            end
        end

        return false
        
    end

    def isRight?
        a = @sides[0]
        b = @sides[1]
        c = @sides[2]
        return pythagoras(a, b, c) || pythagoras(c, b, a) || pythagoras(c, a, b)
    end

    def isEquilateral?
        a = @sides[0]
        b = @sides[1]
        c = @sides[2]
        return a == b && b == c
    end

    def pythagoras(a, b, c)
        return (a**2 + b**2) == c**2    #a^2
    end

    def check_sides(a,b,c)
        return (a + b) > c
    end
end
