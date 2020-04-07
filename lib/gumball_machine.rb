# entry point file
# first file that runs

# keep track of number of gumballs => model
# inform user of result => view
# check if gumballs are available => model, controller
# prompt for user input => view
# process user input => controller
# provide gumballs => controller
# accept gumball refills => controller, model

require_relative "gumball_machine/controllers/gumball_machine_controller"

gumball_machine = GumballMachineController.new
gumball_machine.run