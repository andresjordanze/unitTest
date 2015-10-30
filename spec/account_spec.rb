require 'spec_helper'
require 'account'

describe Account do

	describe "#initialize" do

		it 'should initialize with minimumBalance of 10.00' do
			account = Account.new
			expect(account.minimumBalance).to eq(10.00)
		end
	end
end