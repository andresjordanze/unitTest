require 'spec_helper'
require 'account'

describe Account do
	account = Account.new
	destinationAccount = Account.new

	describe "#to get correct minimum balance" do
		it 'returns correct minimum balance' do
			expectedMinimumBalance = 10.00
			expect(account.minimumBalance).to eq(expectedMinimumBalance)
		end
	end

	describe "#to get correct balance after deposit" do
		it 'returns correct balance' do
			expectedBalance = 20.00
			account.deposit(20.00)
			expect(account.balance).to eq(expectedBalance)
		end
	end

	describe "#to get correct balance after withdraw" do
		it 'returns correct balance' do
			expectedBalance = 15.00
			account.withdraw(5.00)
			expect(account.balance).to eq(expectedBalance)
		end
	end

	describe "#to get correct balances after transfer funds" do
		describe '# minimumBalance is greater than amount' do 
			it 'returns correct balance in account' do
				expectedBalance = 13.00
				account.transferFunds(destinationAccount, 2.00)
				expect(account.balance).to eq(expectedBalance)
			end

			it 'returns correct balance in destination account' do
				expectedBalance = 2.00
				expect(destinationAccount.balance).to eq(expectedBalance)
			end
		end

		describe '# minimumBalance is less than amount' do 	
			it 'returns error' do
				expect{account.transferFunds(destinationAccount, 4.00)}.to raise_error(ArgumentError, "InsufficientFundsException")
			end
		end
	end
end