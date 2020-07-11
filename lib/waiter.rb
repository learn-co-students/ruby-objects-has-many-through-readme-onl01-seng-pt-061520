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
  
  def new_meal
    
  end
  
  def meals
    
  end
  
  def best_tipper
    
  end
end