class Business

  attr_accessor :name, :revenue, :industry, :state

  def initialize(name, revenue, industry, state)
    @name = name
    @revenue = revenue
    @industry = industry
    @state = state
  end

  def show_company_information
    print "Company Name:" + @name + "\n"
    print "Revenue:" + @revenue + "\n"
    print "Industry:" + @industry + "\n"
    print "State:" + @state + "\n"
    puts "\n"
  end

end

row1  = Business.new "DataXu", 87_000_000, "Marketing", "MA"
row2  = Business.new "RestoreHealth",	4900000, "Health", "WI"
row3  = Business.new "Blue Kai", 26_800_000, "Marketing", "CA"

spreadsheet = [row1, row2, row3]

selected = spreadsheet.select do |row|
  row.industry == "Marketing"
end

# nicely printed list of company names
names = spreadsheet.map do |row|
  row.name
end


# Sum the revenue
revenues = spreadsheet.map do |row|
  row.revenue
end

total = 0
revenues.each do |i|
  total += i
end

# better way to sum things
puts revenues.inject(:+)


# for jk in revenues do
#   total += jk
# end

puts "total: #{total}"
