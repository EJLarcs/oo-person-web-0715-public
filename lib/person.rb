# your code goes here
class Person

  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account 
#this is only so you don't have to bother
  
  def initialize(name)
    @name = name
    @balance = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account
    @balance 
  end

#this is a setter method
  def happiness=(val)
      if val > 10 
      @happiness = 10
      elsif val < 0
      @happiness = 0
      else
      @happiness = val
      end 
  end

  def hygiene=(val)
    if val>10
      @hygiene = 10
    elsif val<0
      @hygiene = 0
    else
      @hygiene = val
    end
  end

  def happy?
    return true if @happiness > 7 else false
  end

  def clean?
    return true if @hygiene > 7 else false
  end

  def get_paid(salary)
    @balance += salary
    "all about the benjamins"
  end

  def take_bath 
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end 

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness += 3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"       
        self.happiness += 1
        person.happiness += 1
      return "blah blah sun blah rain" 
    else
      return "blah blah blah blah blah"
    end
  end

end 