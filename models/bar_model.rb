class BarModel
	def initialize
			@drink_amounts = {
					beer: 0,
					martini: 0,
					coke: 0
			}
			restock(beer: 20, martini: 20, coke: 20)
	end

	def restock(beer: 0, martini: 0, coke: 0)
			@drink_amounts[:beer] += beer unless beer < 0
			@drink_amounts[:martini] += martini unless martini < 0
			@drink_amounts[:coke] += coke unless coke < 0
	end

	def get_drink(key)
			if @drink_amounts[key] and @drink_amounts[key] - 1 >= 0
					return @drink_amounts[key] -= 1
			end
	end

	def get_available_drinks()
			drinks = []

			@drink_amounts.each do | key, value|
					if value > 0
							drinks.push(key)
					end
			end

			return drinks
	end
end