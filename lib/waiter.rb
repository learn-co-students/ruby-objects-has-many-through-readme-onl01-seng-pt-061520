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
  
  def new_meal(customer, total, tip = 0)
    Meal.new(customer, self, total, tip)
  end
  
  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end
  
  

end