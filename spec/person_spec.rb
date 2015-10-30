require 'spec_helper'
require 'person'

describe Person do
	person = Person.new('FirstName','LastName',23)

	describe "#to get correct age" do
		it 'returns correct age' do
			expectedAge = 23
			expect(person.age).to eq(expectedAge)
		end
	end

	describe "#to get correct full name" do
		it 'returns correct full name' do
			expectedAFullName = 'FirstName LastName'
			expect(person.fullName).to eq(expectedAFullName)
		end
	end

	describe '#to get correct cash balance' do
		it 'returns correct cash balance' do
			expectedCashBalance = 100000
			expect(person.cashBalance).to eq(expectedCashBalance)
		end
	end
end