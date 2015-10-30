class Account
    private
    @balance
    @minimumBalance

    public
    def initialize
        @minimumBalance = 10.00
    end
        
    def deposit( amount)
        @balance += amount
    end

    def withdraw(amount)
        @balance -= amount
    end

    def transferFunds(destination, amount)
        if (@balance - amount < minimumBalance)
            raise InsufficientFundsException
        end
        destination.Deposit(amount)
        Withdraw(amount)
    end

    def balance
        @balance
    end
        
    def minimumBalance
        @minimumBalance
    end
end