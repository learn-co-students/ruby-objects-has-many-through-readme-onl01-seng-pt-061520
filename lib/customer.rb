class Customer
  attr_accessor :name, :age #the customer can change it's name and age 
  #if it were the reader accesor it wouldn't be able to change it 
  #
  @@all = [] #when initialized it stores the customers that are being built, into here

  def initialize(name, age)
    @name = name 
    @age = age 
    @@all << self 
  end 

  def self.all 
    @@all 
  end 

  def meals
    Meal.all.select do |meal| #iterating through every instance of 'meal' and returning only the ones where the meal's 'customer' matches the current 'customer' instance
        meal.customer == self 
     end
  end  
 
  def waiters 
    meals.map do |meal|
        meal.waiter 
    end
  end 

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
    #don't need to take 'customer' into the argument because we are passing in self as reference to the class(Customer)
    #this method allows us to create meals as a 'customer' and automatially associate each 'meal' with the 'customer' that created it
  end 
  
  def new_meal_20_percent(waiter, total)
    tip = total * 0.2
    Meal.new(waiter, self, total, tip)
  end 

  def self.oldest_customer
    oldest_age = 0 
    oldest_customer = nil 
    self.all.each do |customer|
        if customer.age > oldest_age
            oldest_age = customer.age
            oldest_customer = customer 
        end 
    end 
    oldest_costumer
    end 
end 
