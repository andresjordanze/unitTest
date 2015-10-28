require 'person'

describe Person do

	before(:each) do
		@person = Person.new
	end

	it 'deberia mostrar el marcador' do
		@person.Age = '25'
		expect(@person.Age).to eq('25')
	end
end