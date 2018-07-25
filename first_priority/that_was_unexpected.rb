class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def tall?
    true
  end

  def basketball_player?
    false
  end

  def likes_candy?
    true
  end

  def ballin_candy_lover?
    if "baller, shot caller"
      true
    else
      10.times do
        "not a ballin candy lover"
      end
    end
  end
end
