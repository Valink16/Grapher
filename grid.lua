local grid = {}
function grid.draw(ox, oy, ppp, ppu, ga) -- x offset, y offset, pixels per print, pixels per unit, grid alpha
    for i = -ox, ox, ppp do
        love.graphics.line(i, -3, i, 3)
        love.graphics.print(tostring(i), i, 0)
        for a = i, i + ppp, ppu do
            love.graphics.line(a, -1, a, 1)
            love.graphics.setColor(1, 1, 1, ga)
            love.graphics.line(a, -oy, a, oy)
            love.graphics.setColor(1, 1, 1, 1)
        end
    end

    for i = -oy, oy, ppp do
        love.graphics.line(-3, i, 3, i)
        love.graphics.print(tostring(i), 0, i)
        for a = i, i + ppp, ppu do
            love.graphics.line(-1, a, 1, a)
            love.graphics.setColor(1, 1, 1, ga)
            love.graphics.line(-ox, a, ox, a)
            love.graphics.setColor(1, 1, 1, 1)
        end
    end
end

return grid