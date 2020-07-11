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
    Meal.new(self, customer, total, tip)
  end
  
  def meals
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end
  
  def best_tipper
    best_tipped_meal = meals.max do |meal_1, meal_2|
      meal_1.tip <=> meal_2.tip
  end
  
  

end