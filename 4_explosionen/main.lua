-- variablen

local explosions = {}

-- initialisierung

function love.load()
	image = love.graphics.newImage("explosion.png")
end

-- bewegung

function love.update(delta)
	remove_list = {}

	for index, explosion in ipairs(explosions) do
		explosion.step = explosion.step + delta * 2

		if explosion.step > 2 then
			table.insert(remove_list, index)
		end
	end

	for _, remove in ipairs(remove_list) do
		table.remove(explosions, remove)
	end
end

-- zeichnen

function love.draw()
	local size = image:getWidth()

	for _, explosion in ipairs(explosions) do
		local factor

		if explosion.step < 1 then
			factor = explosion.step
		else
			factor = 2 - explosion.step
		end

		love.graphics.draw(image, explosion.x, explosion.y, 0, factor, factor, size / 2, size / 2)
	end
end

-- explosion hinzufügen

function love.mousepressed(x, y, button)
	local explosion = {
		x = x,
		y = y,
		step = 0,
	}

	table.insert(explosions, explosion)
end

