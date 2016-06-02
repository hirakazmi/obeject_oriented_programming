class Paperboy
attr_reader :name, :experience, :side, :earnings

  def initialize(name, quota, experience, side, earnings)
      @name = name
      @quota = quota
      @experience = experience
      @side = side
      @earnings
  end

  def quota
    @quota = 50 + ((@experience/2).to_i)
  end

  def deliver(start_adress, end_adress)
    my_houses = (start_adress + end_adress) / 2 == 0
    @earnings = my_houses.each do |earning|
                  earning * 0.25
                end
  end
end
50
