require 'pry'
class BankAccount
    attr_accessor :balance, :status
    attr_reader :name 
    
    def initialize(name)
        @name = name 
        @balance = 1000 
        @status = "open" 
    end 
    
    def balance 
        @balance
    end 
    
    def status
        @status 
    end 
    
    def deposit(amount)
        self.balance += amount
    end 
    
    def display_balance
        "Your balance is $#{balance}."
    end 
    
    def valid?
        if status == "open" && balance > 0
          true 
        else 
          false
        end
    end 
    
    def close_account
        # if self.valid? == false 
        # "closed"
        # end 
        # binding.pry 
        self.status = "closed"
    end
end






