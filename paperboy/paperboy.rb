class Paperboy
attr_accessor :name, :experience, :side, :quota
attr_reader :earnings

  def initialize(name, quota, experience, side, earnings)
      @name = name
      @quota = 50
      @experience = 0
      @side = even
      @earnings = earnings
  end

  def quota
    @quota = 50 + ((@experience/2).to_i)
      # if @quota > 50
      #   0.5 * @experience
      # elsif
      #     @experience - 2

  end

  def deliver(start_address, end_address)
    my_houses = (end_address - start_address) / 2
    my_houses.times.each do
      @earnings += 0.25
    end
    @experience = @experience + my_houses
  end


end

tak = Paperboy.new("tak", 50, 30, "even", 30)
