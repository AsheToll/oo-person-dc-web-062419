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

    def take_bath
        # take hygiene and increase by 4
        take_bath_increase = self.hygiene + 4
        self.hygiene = take_bath_increase
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        # increment happiness by 2
        happiness_increase = self.happiness + 2
        self.happiness = happiness_increase
        # decrease hygiene by 3
        hygiene_decrease = self.hygiene - 3
        self.hygiene = hygiene_decrease
        # return Queen lyrics
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        # makes the person calling happier by three points
        happier_person = self.happiness + 3
        self.happiness = happier_person

        happier_friend = person.happiness + 3
        person.happiness = happier_friend
        # incrementing both happiness points by 3
        # If Stella calls Felix, return "Hi Felix! It's Stella. How are you?"
        return "Hi #{person.name}! It's #{self.name}. How are you?"
    end
    
    # accept two arguments, person and topic
    def start_conversation(person, topic)
        # If the topic is politics, both people get sadder and the method returns "blah blah partisan blah lobbyist".
        if topic == 'politics'
            sadder_person = self.happiness - 2
            self.happiness = sadder_person

            sadder_friend = person.happiness - 2
            person.happiness = sadder_friend
            return "blah blah partisan blah lobbyist"
        # If the topic is weather, both people get a little happier and the method returns "blah blah sun blah rain".
        elsif topic == 'weather'
            happier_person = self.happiness + 1
            self.happiness = happier_person

            happier_friend = person.happiness + 1
            person.happiness = happier_friend
            return "blah blah sun blah rain"
        # If the topic is not politics or weather, their happiness points don't change and the method returns "blah blah blah blah blah".
        else
            return "blah blah blah blah blah"
        end
    end
end
