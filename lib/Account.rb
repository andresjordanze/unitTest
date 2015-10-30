class Account
    private
    @balance
    @minimumBalance

    public
    def initialize
        @minimunBalance = 10.00
    end
        
    def Deposit( amount)
        @balance += amount
    end

    def Withdraw(amount)
        @balance -= amount
    end

    def TransferFunds(destination, amount)
        if (@balance - amount < minimumBalance)
            raise InsufficientFundsException
        end
        destination.Deposit(amount)
        Withdraw(amount)
    end

    def Balance
        @balance
    end
        
    def minimumBalance
        @minimumBalance
    end
end