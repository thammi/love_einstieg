-- variablen

local x = 100
local y = 100

-- zeichnen

function love.draw()
	love.graphics.print("Hallo Welt", x, y)
end

-- tastatur eingabe

function love.keypressed(key, unicode)
	if key == 'up' then
		y = y - 10
	end

	if key == 'down' then
		y = y + 10
	end

	if key == 'left' then
		x = x - 10
	end

	if key == 'right' then
		x = x + 10
	end
end

