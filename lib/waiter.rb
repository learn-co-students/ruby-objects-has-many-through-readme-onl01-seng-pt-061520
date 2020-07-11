class Waiter
  attr_accessor :name, :years_exp
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name, years_exp)
    @name = name
    @years_exp = years_exp
    @@all << self
  end
end