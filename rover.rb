

# Rover coordination program
# Jason McCay

# Set up constants (for now)

MIN_COORDINATES = [0,0]
MAX_COORDINATES = [5,5]

ROVER_ONE_STARTING_LOCATION = [1,2]
ROVER_ONE_STARTING_X_COORDINATE = 1
ROVER_ONE_STARTING_Y_COORDINATE = 2
ROVER_ONE_STARTING_DIRECTION = "N"
ROVER_ONE_MOVES = ["L", "M", "L", "M", "L", "M", "L", "M", "M"]

ROVER_TWO_STARTING_LOCATION = [3,3]
ROVER_TWO_STARTING_X_COORDINATE = 3
ROVER_TWO_STARTING_Y_COORDINATE = 3
ROVER_TWO_STARTING_DIRECTION = "E"
ROVER_TWO_MOVES = ["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"]


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

## define rover 1 inital coordinates
x_loc = ROVER_ONE_STARTING_X_COORDINATE
y_loc = ROVER_ONE_STARTING_Y_COORDINATE


puts "initial direction -> #{direction}"
puts "initial location[0] -> #{x_loc}."
puts "initial location[1] -> #{y_loc}."

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

		if direction == 0 || direction == 360
			y_loc = y_loc + 1
			puts "moved north"
		end
		
		if direction == 90
			x_loc = x_loc + 1
			puts "moved east"
		end
		
		if direction == 180
			y_loc = y_loc - 1
			puts "moved south"
		end

		if direction == 270
			x_loc = x_loc - 1
			puts "moved west"
		end

	end

	puts "Finished command"
	puts direction
	puts "[#{x_loc},#{y_loc}]"

end


# Move Rover 2


if ROVER_TWO_STARTING_LOCATION == "N"
	direction = 0
elsif ROVER_TWO_STARTING_DIRECTION == "W"
	direction = 270
elsif ROVER_TWO_STARTING_DIRECTION == "S"
	direction = 180
elsif ROVER_TWO_STARTING_DIRECTION == "E"
	direction = 90
end

## define rover 1 initial location

location = ROVER_TWO_STARTING_LOCATION

## define rover 1 inital coordinates
x_loc = ROVER_TWO_STARTING_X_COORDINATE
y_loc = ROVER_TWO_STARTING_Y_COORDINATE


puts "initial direction -> #{direction}"
puts "initial location[0] -> #{x_loc}."
puts "initial location[1] -> #{y_loc}."

for i in 0..ROVER_TWO_MOVES.length

	print "Processing command #{i}..."

	if ROVER_TWO_MOVES[i] == "L"

		puts "Turning left!"

		if direction == 0
			direction = 360
		end
		direction = direction - 90

	end

	if ROVER_TWO_MOVES[i] == "R"

		puts "Turning right!"

		if direction == 360
			direction = 0
		end
		direction = direction + 90

	end

	

	if ROVER_TWO_MOVES[i] == "M"

		puts "Moving!"
		puts "My direction is: #{direction}"

		if direction == 0 || direction == 360
			y_loc = y_loc + 1
			puts "moved north"
		end
		
		if direction == 90
			x_loc = x_loc + 1
			puts "moved east"
		end
		
		if direction == 180
			y_loc = y_loc - 1
			puts "moved south"
		end

		if direction == 270
			x_loc = x_loc - 1
			puts "moved west"
		end

	end

	puts "Finished command"
	puts direction
	puts "[#{x_loc},#{y_loc}]"

end
