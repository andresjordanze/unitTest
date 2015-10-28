class Discount
    def calculateDiscount(salesAmnt)
        @discountPrice = 0.0
        if (salesAmnt == 0 || salesAmnt < 0)
            raise ArgumentError.new(" Sales Amount should not be 'Zero/Negative'")
        elsif (salesAmnt >= 1000 && salesAmnt < 2000)
            # 5% Discount
            @discountPrice = salesAmnt - (salesAmnt * 0.05)
        elsif (salesAmnt >= 2000 && salesAmnt < 5000)
            # 10% Discount
            @discountPrice = salesAmnt - (salesAmnt * 0.1)
        elsif (salesAmnt >= 5000 && salesAmnt < 20000)
            # 50% Discount
            @discountPrice = salesAmnt - (salesAmnt * 0.5)
        else
            # No Discount
            @discountPrice = salesAmnt - 0.0
        end
        @discountPrice
    end
end