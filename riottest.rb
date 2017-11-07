class Person
   attr_accessor :name, :hair_color
   @@everyone = []
   def initialize(name, hair_color)
     @name = name
     @hair_color = hair_color
   end

   def save
     @@everyone << self
   end

   def sing
     puts "#{@name} is singing"
  end

  def self.riot
    puts "The people are rising up!"
    @@everyone.each do |person|
    puts "#{person.name} is rioting!"
    end
  end
end


sandy = Person.new("Sandy", "red")
joe = Person.new("Joe", "black")
tim = Person.new("Tim", "brown")

sandy.save
joe.save
tim.save

Person.riot
