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
  
  def new_meal(waiter, total, tip = 0)
    Meal.new(waiter, self, total, tip)
  end
  
  def meals
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end
  
  def waiters
    meals.map do |meal|
      meal.waiter
  end
end

end