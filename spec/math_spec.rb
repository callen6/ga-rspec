require 'spec_helper'
require_relative '../lib/math'

describe '#square' do # use the # symbol because it indicates it's an instance method
	it "should have a method called square" do
	expect(method(:square)) # if :square weren't a symbol, test would run the method square
	end

	it "should have one required parameter called x" do
		parameters = method(:square).parameters
		expect(parameters[0]).to include (:req)
		expect(parameters[0]).to include(:x)
		expect(parameters.length).to eq 1
	end

	it "should square numbers" do
		expect(square(0.5)).to eq 0.25
		# keep writing on own
	end

	it "should raise and error when non-number passed as parameter" do 
		expect{square("cat")}.to raise_error(TypeError) # NoMethodError if x ** 2 in math.rb
		expect{square(true)}.to raise_error(NoMethodError)
	end
end