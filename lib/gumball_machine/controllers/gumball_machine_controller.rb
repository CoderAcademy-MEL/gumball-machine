require_relative "../views/gumball_machine_view"
require_relative "../models/gumball_machine"

class GumballMachineController
  def initialize 
    @view = GumballMachineView.new
    @gumball_machine = GumballMachine.new
  end 

  def run 
    while true
      system("clear")
      option_selected = @view.options_for_machine # 1, 2 or 3
      if option_selected == 1
        @view.gumballs_count(@gumball_machine)
      elsif option_selected == 2
        @gumball_machine.refill_gumball_machine
        @view.refill_message
      elsif option_selected == 3
        provide_gumball
      else
        exit
      end 
      sleep 2
    end
  end

  def provide_gumball
    unless @gumball_machine.empty?
      @gumball_machine.dispense
      @view.give_user_gumball
    else
      @view.inform_user_of_gumball_shortage
    end
  end 
end 