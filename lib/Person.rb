class Person
	@m_Fname
	@m_Lname
	@m_Age
	@m_cash

	def initialize
		@m_FName = ""
	    @m_LName = ""
	    @m_Age = 0
	    @m_cash = 0
	end

	def Person(strFName, strLName, iAge)
		m_FName = strFName;
        m_LName = strLName;
        m_Age = iAge;
        m_cash = 100000;
	end

	def Age
    	@m_Age
    end

    def FullName
         @m_FName + " " + @m_LName
    end

    def CashBalance
        @m_cash
    end

    def BuyCar( fCost)
        @m_cash = @m_cash + fCost;
        if (@m_cash >= 0)
            true
        else
            false
    end
	
end