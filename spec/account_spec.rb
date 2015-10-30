require 'spec_helper'
require 'account'

describe Account do
	account = Account.new

	describe "#to get correct minimum balance" do
		it 'returns correct minimum balance' do
			expectedMinimumBalance = 10.00
			expect(account.minimumBalance).to eq(expectedMinimumBalance)
		end
	end
end