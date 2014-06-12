# Sean Reid
# DAY-3
# ======================================
#
# * build upon day-2 homework (use that as your objects)
# * Create an array of those objects (5 items)
# * Objects must have different attribute values (name or price)
# * Ask the user which items to search for ---> use a regex and select
# * Display the items nicely (using print) ---> map
# * If no item found, tell user nicely


class Drink


  attr_accessor :color, :temp

  def initialize(color, temp, size)
    @color = color
    @temp = temp
    @size = size
  end

end

class Coffee < Drink
end



coffee = Coffee.new "Black", "hot", "Large"
coffee2 = Coffee.new "Pink", "very hot", "Small"
coffee3 = Coffee.new "Black", "very cold", "Medium"
coffee4 = Coffee.new "Red", "warm", "Large"
coffee5 = Coffee.new "Red", "cold", "Medium"

coffees = [coffee, coffee2, coffee3, coffee4, coffee5]

puts "What temperature coffee do you want? We have #{coffees.map(&:temp).join(', ')}"
answer = gets.chomp


finder = coffees.select do |coffee|
  coffee.temp[/^#{answer}$/i]
end

temps = finder.map do |coffee|
  coffee.temp
end

#warn user if we didn't find anything for them
if temps.empty?
  print "Pretty please choose hot, cold or warm.\n"
else
  print "We have " + temps.join(" & ") +".\n"
end
