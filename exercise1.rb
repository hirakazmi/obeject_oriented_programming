class Cat
  attr_accessor :name
  attr_accessor :preffered_food
  attr_accessor :meal_time

  def initialize(name, preffered_food, meal_time)
    @name = name
    @preffered_food = preffered_food
    @meal_time = meal_time
  end

  def eats_at
    if
      @meal_time <= 11
      return "#{@meal_time} AM"
    else
      return "#{@meal_time - 12} PM"
    end
  end

  def meow
    "My name is #{@name}, you have to feet me #{@preffered_food} at #{eats_at}"
  end
end

smokey = Cat.new("smokey", "salmon", 16)
luffy = Cat.new("luffy", "chicken", 4)
chutki = Cat.new("chutki", "tuna", 20)

puts smokey.meow
puts luffy.meow
puts chutki.meow
