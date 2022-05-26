require_relative '../models/bar_model.rb'
require_relative '../views/bar_view.rb'

class BarController
	def initialize
			@model = BarModel.new
			@view = BarView.new
	end

	def run
			selection = greet_customer_and_take_selection
			items = @model.get_available_drinks

			if selection == 1
					@view.read_menu(items)
			end

			order = take_order(items)
			@view.goodbye(order)
	end

	def greet_customer_and_take_selection
			@view.greeting

			while true
					answer = @view.selection
					if (answer != 1 and answer != 2)
							@view.wrong_answer
					else
							return answer
					end
			end
	end

	def take_order(items)
			while true
					order = @view.order
					drink_count = @model.get_drink(order)

					if drink_count != nil
							break
					end

					@view.wrong_answer
					@view.read_menu(items)
			end

			order
	end
end