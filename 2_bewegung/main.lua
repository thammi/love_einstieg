-- variablen

local x = 100
local y = 100

local move_x = 0
local move_y = 0

-- initialisierung

function love.load()
	bad_guy = love.graphics.newImage("bad_guy.png")
end

-- bewegen

function love.update(delta)
	x = x + move_x
	y = y + move_y
end

-- zeichnen

function love.draw()
	love.graphics.draw(bad_guy, x, y)
end

-- tastatur eingabe

function love.keypressed(key, unicode)
	if key == 'up' then
		move_y = -5
	end

	if key == 'down' then
		move_y = 5
	end

	if key == 'left' then
		move_x = -5
	end

	if key == 'right' then
		move_x = 5
	end
end


function love.keyreleased(key, unicode)
	if key == 'up' or key == 'down' then
		move_y = 0
	end

	if key == 'left' or key == 'right' then
		move_x = 0
	end
end

