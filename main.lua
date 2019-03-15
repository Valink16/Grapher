-- Grapher
-- By Valink
-- Started on 15.03.2019
constants = require "constants"
Affine_function = require "Affine_function"
grid = require "grid"

width = love.graphics.getWidth()
height = love.graphics.getHeight()
half_width = width / 2
half_height = height / 2

function love.draw() 
    love.graphics.translate(half_width, half_height)

    -- Drawing x and y axis
    love.graphics.line(-half_width, 0, half_width, 0)
    love.graphics.line(0, -half_height, 0, half_width)

    grid.draw(half_width, half_height, 
        constants.pixels_per_print, constants.pixels_per_unit, constants.grid_alpha)

    my_lf = Affine_function.new(2, 0)
    y1 = my_lf:image(0)
    y2 = my_lf:image(100)
    Affine_function.draw(0, y1, 100, y2)
end