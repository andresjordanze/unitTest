class Person

	def initialize(strFName, strLName, iAge)
		@m_FName = strFName
        @m_LName = strLName
        @m_Age = iAge
        @m_cash = 100000
	end

	def age
    	@m_Age
    end

    def fullName
         @m_FName + " " + @m_LName
    end

    def cashBalance
        @m_cash
    end

    def buyCar(fCost)
        @m_cash = @m_cash + fCost
        if (@m_cash >= 0)
            true
        else
            false
        end
    end
	
end