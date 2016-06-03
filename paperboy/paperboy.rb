class Paperboy
attr_reader :earnings
attr_accessor :name, :side, :experience, :quota
  def initialize(name, side)
    @name = name
    @side = side
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def quota
    @quota += @experience * 0.5
  end


  def deliver(start_address, end_address)

    if (start_address%2 == end_address%2 && end_address%2 == 1 && @side == "even") || (start_address%2 == end_address%2 && end_address%2 ==0 && @side=='odd')
      my_houses = (end_address - start_address) * 0.5
    else
      my_houses = ((end_address - start_address) * 0.5) + 1
    end

    if quota == my_houses
        current_earnings = my_houses * 0.25
    elsif quota > my_houses
        current_earnings = my_houses * 0.25 - 2
    else quota < my_houses
        current_earnings = (quota * 0.25) + ((my_houses - quota) * 0.5)
    end

    @earnings += current_earnings
    @experience += my_houses

  end

  def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{earnings} so far"
  end

end

kat = Paperboy.new("kat", "odd")

puts kat.quota
kat.deliver(100,200)
puts kat.earnings
kat.report

puts kat.quota
kat.deliver(1,150)
puts kat.earnings
kat.report



# FIRST ATTEMPT AT THIS, FAILED MISERABLY, CAME BACK TO IT LATER
# class Paperboy
# attr_accessor :name, :side
# attr_reader :earnings , :experience
#
#   def initialize(name, side)
#       @name = name
#       @side = side
#       @earnings = earnings
#       @experience = experience
#       @quota = quota
#   end
#
#   def quota
#     @quota = 50 + ((@experience/2).to_i)
#   end
#
#   def deliver(start_address, end_address)
#     my_houses = (end_address - start_address) / 2
#       if @quota == my_houses
#         current_earnings = my_houses * 0.25
#       elsif @quota > my_houses
#         current_earnings = my_houses * 0.25 - 2
#       else @quota < my_houses
#         current_earnings = (@quota * 0.25) + ((my_houses - @quota) * 0.5)
#       end
#     @experience += my_houses
#     @earnings += current_earnings
#   end
#
#   def report
#     puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{earnings} so far"
#   end
#
# end
#
# tommy = Paperboy.new("Tommy", "even")
# tommy.deliver(100, 220)
# puts tommy.report
