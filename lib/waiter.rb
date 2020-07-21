class Waiter
@@all = []
  attr_accessor :name, :years 
  def initialize(name, years)
    @name = name 
    @years = years 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end
  
  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end 
  
  def meals
    Meal.all.select{|meal| meal.waiter == self}
  end 
  
  def best_tipper
    a = -1
    b = ""
    Customer.all.each do |customer| 
      customer.meals.each do |meal|
        if meal.tip > a
          a = meal.tip 
          b = customer 
        end 
      end 
    end 
    b
  end 
  
end