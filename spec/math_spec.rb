require 'spec_helper'
require_relative '../lib/math'

describe '#square' do 
	it "should have a method called square" do
	expect(method(:square)) # if :square weren't a symbol, test would run the method square
end

describe '#square' do # use the # symbol because it indicates it's an instance method
	it "should have one required parameter called x" do
		parameters = method(:square).parameters
		expect(parameters[0]).to include (:req)
		expect(paramerts[0]).to include(:x)
		expect(parameters.length).to eq 1
	end
	it 
end