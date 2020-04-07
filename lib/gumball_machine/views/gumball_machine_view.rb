class GumballMachineView 
  def options_for_machine 
    puts "1. Count gumballs"
    puts "2. Refill gumballs"
    puts "3. Provide 1 gumball"
    puts "4. Exit"
    print "> "
    gets.chomp.to_i
  end 

  def gumballs_count(gumball_machine)
    puts "There are #{gumball_machine.count} gumballs left"
  end 

  def refill_message
    puts "Refilling gumball machine"
  end 

  def give_user_gumball
    puts "here's one tasty gumball! 🔴"
  end

  def inform_user_of_gumball_shortage
    puts "sorry no gumballs left 😞"
  end 
end