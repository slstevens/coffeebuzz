chai = require 'chai'
expect = chai.expect
Coffeebuzz = require '../src/fizzbuzz.coffee'

describe 'Coffeebuzz', ->

	before ->
		Coffeebuzz = new Coffeebuzz

	context 'should know if a number is', ->	
	
		it 'divisible by three', ->
			expect(Coffeebuzz.isDivisibleByThree(3)).to.be.true

		it 'not divisible by three', ->
			expect(Coffeebuzz.isDivisibleByThree(1)).to.be.false

		it 'divisible by five', ->
			expect(Coffeebuzz.isDivisibleByFive(5)).to.be.true

		it 'not divisible by five', ->
			expect(Coffeebuzz.isDivisibleByFive(1)).to.be.false	

		it 'is divisible by fifteen', ->
			expect(Coffeebuzz.isDivisibleByFifteen(15)).to.be.true

		it 'is divisible by fifteen', ->
			expect(Coffeebuzz.isDivisibleByFifteen(1)).to.be.false

	context 'should say', ->

		it 'fizz if the number is divisible by three', ->
			expect(Coffeebuzz.say(3)).to.equal('fizz')

		it 'buzz if the number is divisible by five', ->
			expect(Coffeebuzz.say(5)).to.equal('buzz')

		it 'fizzbuzz if the number is divisible by fifteen', ->
			expect(Coffeebuzz.say(15)).to.equal('fizzbuzz')

		it 'number if the number is not divisible by any', ->
			expect(Coffeebuzz.say(1)).to.equal(1)	

						

