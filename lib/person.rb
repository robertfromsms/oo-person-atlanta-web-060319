class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness=(happy)
        @happiness = happy
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end 

    def hygiene=(hygienezz)
        @hygiene = hygienezz
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def happy?
         self.happiness > 7
    end 

    def clean?
        self.hygiene > 7
    end 
    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness +=2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(friend, topic)
        case topic
            when "politics"
                self.happiness -= 2
                friend.happiness -= 2
                "blah blah partisan blah lobbyist"
            when "weather"
                self.happiness += 1
                friend.happiness += 1
                "blah blah sun blah rain"
            else 
                "blah blah blah blah blah"
        end 

    end




end 
