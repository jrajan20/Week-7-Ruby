
class Players
	attr_reader :name, :score

	def initialize name
		@name = name
		@score = 0
		@turn = false
	end

	def player_score 
		@score += 10
	end

	# def player_turn
	# 	@turn = true 
	# end

end
