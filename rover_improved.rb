

# (Improved) Rover Program
# Jason McCay

# Set up constants (for now)

MIN_COORDINATES = [0,0]
MAX_COORDINATES = [5,5]

ROVER_ONE_STARTING_X_COORDINATE = 1
ROVER_ONE_STARTING_Y_COORDINATE = 2
ROVER_ONE_STARTING_DIRECTION = "N"
ROVER_ONE_MOVES = ["L", "M", "L", "M", "L", "M", "L", "M", "M"]

ROVER_TWO_STARTING_X_COORDINATE = 3
ROVER_TWO_STARTING_Y_COORDINATE = 3
ROVER_TWO_STARTING_DIRECTION = "E"
ROVER_TWO_MOVES = ["M", "M", "R", "M", "M", "R", "M", "R", "R", "M"]


# L makes rover spin 90 degrees to the left.
# R makes rover spin 90 degrees to the right.
# M makes rover move forward one spot for given heading


class MoveMarsRover

	def initialize(start_x_coordinate, start_y_coordinate, start_direction, commands)

		@x_coord = start_x_coordinate
		@y_coord = start_y_coordinate
		@commands = commands
		@start_direction = start_direction
		@direction = 0

	end

	def convert_direction_to_degrees

		if @start_direction == "N"
			@direction = 0
		elsif @start_direction == "E"
			@direction = 90
		elsif @start_direction == "S"
			@direction = 180
		elsif @start_direction == "W"
			@direction = 270
		end

	end

	def convert_degrees_to_direction

		if @direction == 0
			return "N"
		end

		if @direction == 90
			return "E"
		end

		if @direction == 180
			return "S"
		end

		if @direction == 270
			return "W"
		end
	end


	def turn_left

		if @direction == 0
			@direction = 360
		end

		@direction = @direction - 90

	end

	def turn_right

		if @direction == 360
			@direction = 0
		end

		@direction = @direction + 90

	end

	def move_forward

		if @direction == 0 || @direction == 360
			@y_coord = @y_coord + 1
			#puts "moved north"
		end
		
		if @direction == 90
			@x_coord = @x_coord + 1
			#puts "moved east"
		end
		
		if @direction == 180
			@y_coord = @y_coord - 1
			#puts "moved south"
		end

		if @direction == 270
			@x_coord = @x_coord - 1
			#puts "moved west"
		end

	end

	def process_commands

		i = 0
		
		for i in 0..@commands.length
		
			if @commands[i] == "L"
				turn_left
			end

			if @commands[i] == "R"
				turn_right
			end

			if @commands[i] == "M"
				move_forward
			end

		end 

	end


	def output_final_location
		puts @x_coord.to_s + " " + @y_coord.to_s + " " + convert_degrees_to_direction
	end


end

rover_one = MoveMarsRover.new(ROVER_ONE_STARTING_X_COORDINATE, ROVER_ONE_STARTING_Y_COORDINATE, ROVER_ONE_STARTING_DIRECTION, ROVER_ONE_MOVES)
rover_one.convert_direction_to_degrees
rover_one.process_commands
rover_one.output_final_location

rover_two = MoveMarsRover.new(ROVER_TWO_STARTING_X_COORDINATE, ROVER_TWO_STARTING_Y_COORDINATE, ROVER_TWO_STARTING_DIRECTION, ROVER_TWO_MOVES)
rover_two.convert_direction_to_degrees
rover_two.process_commands
rover_two.output_final_location

