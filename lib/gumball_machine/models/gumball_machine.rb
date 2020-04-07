class GumballMachine
  attr_accessor :count
  def initialize
    @count = 0
  end

  def empty?
    @count <= 0
  end 

  def dispense
    @count -= 1
  end

  def refill_gumball_machine
    @count += 20
  end 
end 