require "pry"
require "colorize"

@main_dish = [
  { name: "Six Pork Spare Ribs", cost: 15 },
  { name: "Half Pound Beef Brisket", cost: 10 },
  { name: "Smoked Chicken Quarter", cost: 5 },
  { name: "Pulled Pork Sliders", cost: 10 },
]

@side_dish = [
  { name: "Baked Beans", cost: 3 },
  { name: "Coleslaw", cost: 3 },
  { name: "Corn Bread", cost: 5 },
]

class Order
  def initialize
    puts
    welcome_menu
  end

  def welcome_menu
    puts `clear`
    puts "---".colorize(:brown)
    puts "Welcome To Lou's BBQ".colorize(:brown)
    puts "---".colorize(:brown)
    puts
    puts "To Place Your Order,".colorize(:yellow)
    puts "Please Select a Main Dish".colorize(:yellow)
    puts
    print "Hit Enter To Continue."
    gets
    view_main_dish  
  end


  def view_main_dish
    print `clear`
    puts "Main Dish:".colorize(:magenta)
    @main_dish.each_with_index do |main, i|
    print "#{i + 1}) ".colorize(:light_yellow)
    print "#{main[:name]} ".colorize(:cyan)
    print "- ".colorize(:light_yellow)
    puts "#{main[:cost]}".colorize(:light_blue)
  end

  order = Order.new
  binding.pry
end