require 'person'
require 'spec_helper'

describe Person do

	describe "#to get correct age" do
		person = Person.new('FirstName','LastName',23)
		puts person.Age

		it 'returns person correct age' do
			expectedAge = 23
			expect(person.Age).to eq(expectedAge)
		end
	end
end