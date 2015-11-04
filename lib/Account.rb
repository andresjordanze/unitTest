class Account
    def initialize
        @minimumBalance = 10.00
        @balance = 0.00
    end
        
    def deposit( amount)
        @balance += amount
    end

    def withdraw(amount)
        @balance -= amount
    end

    def transferFunds(destination, amount)
        if (@balance - amount < minimumBalance)
            raise ArgumentError.new("InsufficientFundsException")
        else
            destination.deposit(amount)
            withdraw(amount)
        end
    end

    def balance
        @balance
    end
        
    def minimumBalance
        @minimumBalance
    end

    private
    @balance
    @minimumBalance
end