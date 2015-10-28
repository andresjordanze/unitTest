require 'spec_helper'
require 'person'

describe Person do

	describe "#to get correct age" do
		person = Person.new('FirstName','LastName',23)
		
		it 'returns person correct age' do
			expectedAge = 23
			expect(person.age).to eq(expectedAge)
		end
	end
end