
class Customer
  
    attr_reader :name
    attr_accessor :age 

    @@all = []
    def initialize(name,age)
        @name = name
        @age = age
        @@all << self 
    end 
    
    def self.all 
        @@all
    end 

    def new_meal(waiter, total, tip)
        Meal.new(waiter, self, total, tip)
    end 

    def meals
        Meal.all.select {|m| m.customer == self}
    end 

    def waiters
        waiters = []
        Meal.all.each do |m|
            if m.customer == self
                waiters << m.waiter
            end
        end 
    waiters 
    end 

end