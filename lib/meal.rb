class Meal #used a "joining" model between waiter and customer classes
    #will give both the 'customer' and 'waiter' instances the ability to get ALL the information about the meal that they need wihtout storing it themselves
    attr_accessor :waiter, :customer, :total, :tip

    @@all = []

    def initialize(waiter, customer, total, tip=0)
        @waiter = waiter
        @customer = customer 
        @total = total 
        @tip = tip
        @@all << self
    end 

    def self.all
        @@all
    end
end