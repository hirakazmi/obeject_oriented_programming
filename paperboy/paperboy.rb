class Paperboy
attr_accessor :name, :side
attr_reader :earnings, :quota, :experience

  def initialize(name, side)
      @name = name
      @side = side
  end

  def quota
    @quota = 50 + ((@experience/2).to_i)
  end

  def deliver(start_address, end_address)
    my_houses = (end_address - start_address) / 2
      if @quota == my_houses
        current_earnings = my_houses * 0.25
      elsif @quota > my_houses
        current_earnings = my_houses * 0.25 - 2
      else @quota < my_houses
        current_earnings = (@quota * 0.25) + ((my_houses - @quota) * 0.5)
      end
    @experience += my_houses
    @earnings += current_earnings
  end

  def report
    puts "I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{earnings} so far"
  end

end

tommy = Paperboy.new("Tommy", "even")
tommy.deliver(100, 220)
puts tommy.report
