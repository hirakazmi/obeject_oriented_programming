class Paperboy
attr_accessor :name, :experience, :side, :quota
attr_reader :earnings

  def initialize(name, quota, experience, side, earnings)
      @name = name
      @quota = quota
      @experience = experience
      @side = side
      @earnings = earnings
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
        current_earnings = (@quota * 0.25) + (my_houses - @quota)
      end
    @experience = @experience + my_houses
    @earnings = @earnings
  end


end

tak = Paperboy.new("tak", 50, 30, "even", 30)
