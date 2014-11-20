

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


puts "initial direction -> #{direction}"
puts "initial location[0] -> #{location[0]}"
puts "initial location[1] -> #{location[1]}"

for i in 0..ROVER_ONE_MOVES.length

	print "Processing command #{i}..."

	if ROVER_ONE_MOVES[i] == "L"

		puts "Turning left!"

		if direction == 0
			direction = 360
		end
		direction = direction - 90

	end

	if ROVER_ONE_MOVES[i] == "R"

		puts "Turning right!"

		if direction == 360
			direction = 0
		end
		direction = direction + 90

	end

	

	if ROVER_ONE_MOVES[i] == "M"

		puts "Moving!"
		puts "My direction is: #{direction}"

		if direction == 0 || 360
			location[1] = location[1] + 1
		end
		
		if direction == 90
			location[0] = location[0] + 1
		end
		
		if direction == 180
			location[1] = location[1] - 1
		end

		if direction == 270
			location[0] = location[0] - 1
		end

	end

	puts "Finished command"
	puts direction
	puts location

end


# Move Rover 2


