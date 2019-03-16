function create_canvas(ox, oy, ppp, ppu, ga) -- x offset, y offset, pixels per print, pixels per unit, grid alpha
    local grid_canvas = love.graphics.newCanvas(ox * 2, oy * 2)
    love.graphics.setCanvas(grid_canvas)
        love.graphics.translate(ox, oy)
        love.graphics.line(-ox, 0, ox, 0)
        love.graphics.line(0, -oy, 0, oy)

        for i = -ox, ox, ppp do
            love.graphics.line(i, -3, i, 3)
            love.graphics.print(tostring(i), i - 12, 0)
            for a = i, i + ppp, ppu do
                love.graphics.line(a, -1, a, 1)
                love.graphics.setColor(1, 1, 1, ga)
                love.graphics.line(a, -oy, a, oy)
                love.graphics.setColor(1, 1, 1, 1)
            end
        end

        for i = -oy, oy, ppp do
            love.graphics.line(-3, i, 3, i)
            love.graphics.print(tostring(-i), 0, i)
            for a = i, i + ppp, ppu do
                love.graphics.line(-1, a, 1, a)
                love.graphics.setColor(1, 1, 1, ga)
                love.graphics.line(-ox, a, ox, a)
                love.graphics.setColor(1, 1, 1, 1)
            end
        end
    love.graphics.setCanvas()
    return grid_canvas
end

local grid = {
    create_canvas = create_canvas
}
return grid
