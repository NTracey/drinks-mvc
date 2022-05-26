class BarView
	def greeting
			puts "Hi there how can I help?"
	end

	def selection
			puts "Enter (1) to look at a menu or (2) to order a drink"
			gets.chomp.to_i
	end

	def read_menu(items)
			items.each do |item|
					puts item.capitalize
			end
	end

	def order
			puts "What would you like?"
			gets.chomp.downcase.to_sym
	end

	def wrong_answer
			puts "Sorry I didn't quite understand you"
	end

	def goodbye(item)
			puts "Here is your #{item}. Thanks for coming, see ya later!"
	end
end