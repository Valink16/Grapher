local Affine_function = {}
function Affine_function.new(m, n) 
    local lf = {}
    lf.m = m
    lf.n = n

    function lf:image(x) 
        return self.m * x + self.n
    end

    function lf:graph() 
        
    end

    return lf
end

function Affine_function.draw(x1, y1, x2, y2)
    love.graphics.line(x1, -y1, x2, -y2)
end

return Affine_function