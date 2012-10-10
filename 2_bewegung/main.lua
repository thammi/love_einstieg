-- variablen

local x = 100
local y = 100

local speed = 5

-- initialisierung

function love.load()
	bad_guy = love.graphics.newImage("bad_guy.png")
end

-- bewegen

function love.update(delta)
	if love.keyboard.isDown('up') then
		y = y - speed
	end

	if love.keyboard.isDown('down') then
		y = y + speed
	end

	if love.keyboard.isDown('left') then
		x = x - speed
	end

	if love.keyboard.isDown('right') then
		x = x + speed
	end
end

-- zeichnen

function love.draw()
	love.graphics.draw(bad_guy, x, y)
end

-- tastatur eingabe

function love.keypressed(key, unicode)
end


function love.keyreleased(key, unicode)
	if key == '+' then
		speed = speed + 1
	end

	if key == '-' then
		speed = speed - 1
	end
end

