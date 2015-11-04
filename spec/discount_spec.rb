require 'spec_helper'
require 'discount'

describe Discount do

	describe "#calculateDiscount" do

		it 'should return sales amount with 5% discount' do
			salesAmount = 1001
			expectedDiscount = 1001 * 0.95
			expect(Discount.calculateDiscount(salesAmount)).to be_within(0.05).of(expectedDiscount)
		end

		it 'should return sales amount with 10% discount' do
			salesAmount = 2001
			expectedDiscount = 2001 * 0.9
			expect(Discount.calculateDiscount(salesAmount)).to be_within(0.05).of(expectedDiscount)
		end

		it 'should return sales amount with 50% discount' do
			salesAmount = 5001
			expectedDiscount = 5001 * 0.5
			expect(Discount.calculateDiscount(salesAmount)).to be_within(0.05).of(expectedDiscount)
		end

		it 'should return sales amount with no discount' do
			salesAmount = 500
			expectedDiscount = 500
			expect(Discount.calculateDiscount(salesAmount)).to be_within(0.05).of(expectedDiscount)
		end

		it 'should raise an error when sales amount below or equal to 0' do
			salesAmount = 0
			expect{Discount.calculateDiscount(salesAmount)}.to raise_error(ArgumentError, " Sales Amount should not be 'Zero/Negative'")
		end
	end
end