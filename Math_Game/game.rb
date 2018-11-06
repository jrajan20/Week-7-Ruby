require_relative './players'
# require_relative './turns'
require_relative './rounds'

class Game
	def initialize
		@players = [
			Players.new('4House'),
			Players.new('4Head')	
		]
		@rounds = Round.new

	end

	# def get_name
	# 	puts 'Player 1 enter your name:'
	# 	p1 = gets.chomp
	# 	if p1
	# 		puts 'Player 2 enter your name:'
	# 		p2 = gets.chomp
	# 	end
	# end

	def play 
		puts "this is a 5 round game!"
		 5.times do
		 	@rounds.round_count
		 	puts "------Round #{@rounds.round_num}------"
		 	@rounds.round_type

		 	@players.each{|player,index|
		 		puts "Player #{index} : #{player.name}"
		 		puts "#{player.name}: #{@rounds.question}"

		 		player_answer = gets.chomp.to_i
		 		correct_answer player_answer,player
		 	}
		 	round_winner

		end
		end_game_summary

	end

	def round_winner
		if @players[0].score > @players[1].score
			puts "#{@players[0].name} is winning"
		end
		if @players[1].score > @players[0].score
			puts "#{@players[1].name} is winning"
		end
		if @players[1].score == @players[0].score
			puts "Both players are tied."
		end
	end

	def correct_answer answer,player
		if answer == @rounds.answer
		 	player.player_score 
		 	puts "CORRECT ANSWER!"
		else
		 	puts "WRONG!"
		end	
	end
	
	def end_game_summary
		if @players[0].score > @players[1].score
			winner = @players[0].name
		end
		if @players[1].score > @players[0].score
			winner = @players[0].name
		end
		if @players[1].score == @players[0].score
			winner = "Both of you"
		end
		puts ""
    	puts "GAME OVER!"
    	puts "#{winner} Wins!"
    	puts "Congratulations"

    end
 end

		 	



