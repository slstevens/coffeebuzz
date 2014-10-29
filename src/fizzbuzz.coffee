class Coffeebuzz 
	constructor: ->
		@divisor = new Divisor

	isDivisibleByThree: (number) ->
		@divisor.isDivisibleBy(number, 3)

	isDivisibleByFive: (number) ->
		@divisor.isDivisibleBy(number, 5)

	isDivisibleByFifteen: (number) ->
		@divisor.isDivisibleBy(number, 15)

	say : (number) ->
		if @isDivisibleByFifteen(number)
			return 'fizzbuzz'	
		if @isDivisibleByThree(number) 
			return 'fizz'
		if @isDivisibleByFive(number) 
			return 'buzz'
		return number

class Divisor
	isDivisibleBy: (number, divisor) ->
		number % divisor == 0


module.exports = Coffeebuzz
