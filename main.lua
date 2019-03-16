-- Grapher
-- By Valink
-- Started on 15.03.2019
constants = require "constants"
Affine_function = require "Affine_function"
grid = require "grid"

function love.load() 
    love.window.setMode(constants.window_width, constants.window_height, {msaa=8})

    half_width = constants.window_width / 2
    half_height = constants.window_height / 2

    grid = grid.create_canvas(half_width, half_height, 
        constants.pixels_per_print, constants.pixels_per_unit, constants.grid_alpha)

    my_lf = Affine_function.new(0.1, 0)
end

function love.draw() 
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.setBlendMode("alpha", "premultiplied")
    love.graphics.draw(grid, 0, 0)
    love.graphics.translate(half_width, half_height)

    my_lf:graph(half_width)
end