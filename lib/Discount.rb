class Discount
    {
        def calculateDiscount(SalesAmnt)
            double DiscountPrice = 0.0

            if (SalesAmnt == 0 || SalesAmnt < 0)
                raise ArgumentError.new(" Sales Amount should not be 'Zero/Negative'")
            elsif (SalesAmnt >= 1000 && SalesAmnt < 2000)
                # 5% Discount
                DiscountPrice = SalesAmnt - (SalesAmnt * 0.05)
            elsif (SalesAmnt >= 2000 && SalesAmnt < 5000)
                # 10% Discount
                DiscountPrice = SalesAmnt - (SalesAmnt * 0.1)

            elsif (SalesAmnt >= 5000 && SalesAmnt < 20000)
                # 50% Discount
                DiscountPrice = SalesAmnt - (SalesAmnt * 0.5)
            else
                # No Discount
                DiscountPrice = SalesAmnt - 0.0
            end

            DiscountPrice
        end
end