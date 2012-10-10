-- variablen

local meteors = {}

-- meteoriten hinzufügen

function addMeteor()
	local y = math.random(0, 786 - image:getHeight())
	local speed = math.random(3, 5)
	local size = math.random(50, 128)

	local meteor = {
		x = 1024,
		y = y,
		speed = speed,
		size = size,
	}

	table.insert(meteors, meteor)
end

-- initialisierung

function love.load()
	image = love.graphics.newImage("meteor.png")
end

-- bewegung

function love.update(delta)
	if math.random() < delta then
		addMeteor()
	end

	remove_list = {}

	for index, meteor in ipairs(meteors) do
		meteor.x = meteor.x - meteor.speed

		if meteor. x < -meteor.size then
			table.insert(remove_list, index)
		end
	end

	for _, remove in ipairs(remove_list) do
		print("Removing " .. remove)
		table.remove(meteors, remove)
	end
end

-- zeichnen

function love.draw()
	for _, meteor in ipairs(meteors) do
		local factor = meteor.size / image:getWidth()
		love.graphics.draw(image, meteor.x, meteor.y, factor, factor)
	end
end

