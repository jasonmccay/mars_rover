

# Rover coordination program
# Jason McCay

# Set up constants (for now)

MIN_COORDINATES = [0,0]
MAX_COORDINATES = [5,5]

ROVER_ONE_STARTING_LOCATION = [1,2]
ROVER_ONE_STARTING_DIRECTION = "N"
ROVER_ONE_MOVES = ["L", "M", "L", "M", "L", "M", "L", "M", "M"]

ROVER_TWO_STARTING_LOCATION = [3,3]
ROVER_TWO_STARTING_DIRECTION = "E"
ROVER_TWO_MOVES = ["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"]


#Compass ... counter-clockwise ... north, west, south, east.

COMPASS = [0, -1, -2, -3]



# L makes rover spin 90 degrees to the left.
# R makes rover spin 90 degrees to the right.
# M makes rover move forward one spot for given heading



## define rover 1 initial direction

if ROVER_ONE_STARTING_DIRECTION == "N"
	direction = 0
elsif ROVER_ONE_STARTING_DIRECTION == "W"
	direction = 270
elsif ROVER_ONE_STARTING_DIRECTION == "S"
	direction = 180
elsif ROVER_ONE_STARTING_DIRECTION == "E"
	direction = 90
end

## define rover 1 initial location

location = ROVER_ONE_STARTING_LOCATION


for i in 0..ROVER_ONE_MOVES.length

	if ROVER_ONE_MOVES[i] == "L"
		if direction == 0
			direction = 360
		end
		direction = direction - 90
	end

	if ROVER_ONE_MOVES[i] == "R"
		if direction == 360
			direction = 0
		end
		direction = direction + 90
	end

	if ROVER_ONE_MOVES[i] == "M"

		if direction = 0 || 360
			location[1] = location[1] + 1
		elsif direction = 90
			location[0] = location[0] + 1
		elsif direction = 180
			location[1] = location[1] - 1
		elsif direction = 270
			location[0] = location[0] - 1
		end

	end

end

print direction
print location


# Move Rover 2


