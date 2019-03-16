constants = require "constants"

function new(m, n) 
    local lf = {}
    lf.m = m
    lf.n = n

    function lf:image(x) 
        return self.m * x + self.n
    end

    function lf:graph(hw) 
        local y1 = lf:image(-hw - 5)
        local y2 = lf:image(hw + 5)
        Affine_function.draw(-hw - 5, y1, hw + 5, y2)
    end

    return lf
end

function draw(x1, y1, x2, y2)
    love.graphics.setColor(0, 0, 1)
    love.graphics.line(x1, -y1, x2, -y2)
end

local Affine_function = {
    new = new,
    draw = draw
}

return Affine_function