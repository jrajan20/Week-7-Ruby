class Round 
	attr_reader :question, :answer, :round_num
	def initialize 
		@question = ""
		@answer = 0
		@question_types = ['+','-','*']
		@round_num = 0
	end

	def round_type
		type = @question_types[rand(0...2)]
		num1 = rand(1...9)
		num2 = rand(1...9)
		if type == '+'
			puts "This round will be Addition!"
			@answer = num1 + num2
			@question = "What is #{num1} + #{num2}?"
		end
		if type == '-'
			puts "This round will be Subtraction!"
			@question = "What is #{num1} - #{num2}?"
			@answer = num1 - num2
		end
		if type == '*'
			puts "This round will be Multiplication!"
			@question = "What is #{num1} * #{num2}?"
			@answer = num1 * num2
		end
	end

	def round_count
		@round_num += 1
	end

end