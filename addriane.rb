female_students = ["Tracy", "Nicole", "Debbie", "Angela", "Judy"]

puts "Guess her name!  It has 5 letters."

name = gets.chomp()

found = female_students.select do |student|
  student[/^#{name}$/i]
end

if found.empty?

  puts "Buzz!  Wrong answer."
else

  puts "Excellent!  #{name} is the correct answer."
end
