class Customer
    attr_accessor :name, :age

    @@all = []

    def initialize (name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end
  
    def new_meal(waiter, total, tip=0) #method to create new meals
        Meal.new(self, waiter, total, tip)
    end

    def meals #looking at all the meals and picking what belongs to them
        Meal.all.select do |meal|
            meal.customer == self
        end
    end

    def waiters #looking through all the waiters.
        meals.map do |meal|
            meal.waiter
        end
    end

end