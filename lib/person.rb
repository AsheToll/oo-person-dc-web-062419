require 'pry'
# your code goes here
class Person
    # get paid/receive payments
    # take a bath
    # call a friend
    # start a conversation
    # state if they are happy and/or clean
    
    # def bank_account
    #     @bank_account
    # end

    # def bank_account= (amount)
    #     @bank_account = amount
    # end
    attr_accessor :bank_account
    attr_accessor :happiness
    attr_accessor :hygiene
    array = (0..10).to_a
    #binding.pry
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def name
        @name
    end

    def happiness
        min = 0
        max = 10

        if @happiness < min
            min
        elsif @happiness > max
            max
        else
            @happiness
        end
    end

    def hygiene
        min = 0
        max = 10

        if @hygiene < min
            min
        elsif @hygiene > max
            max
        else
            @hygiene
        end
    end

   def happy?
        if happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if hygiene > 7
            return true
        else
            return false
        end
    end
    
    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end
    # The take_bath method should increment the person's hygiene points by four and return the string "♪ Rub-a-dub just relaxing in the tub ♫".
    def take_bath
        # take hygiene and increase by 4
        take_bath_increase = self.hygiene + 4
        self.hygiene = take_bath_increase
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
end
