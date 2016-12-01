class Person
  attr_accessor :bank_account
  attr_reader :name, :hygiene, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
    @happiness = point_helper(points)
  end

  def hygiene=(points)
    @hygiene = point_helper(points)
  end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(hygiene - 3)
    self.happiness=(happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(happiness + 3)
    friend.happiness=(friend.happiness + 3)
    "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(friend, convo)
    if convo == "politics"
      self.happiness=(happiness - 2)
      friend.happiness=(friend.happiness - 2)
      "blah blah partisan blah lobbyist"
    elsif convo == "weather"
      self.happiness=(happiness + 1)
      friend.happiness=(friend.happiness + 1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

  private

  def point_helper(nummy)
    if nummy > 10
      nummy = 10
    elsif nummy < 0
      nummy = 0
    else
      nummy
    end
  end
end
