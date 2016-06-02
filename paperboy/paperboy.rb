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

  def deliver
    @earnings = (1..50).each do |earning|
                  earning 



end
