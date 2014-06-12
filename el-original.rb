#Day3HWK building on day1 & 2 HWK

class Dog      #class is a blueprint
  attr_accessor :name
  attr_writer :color
  attr_reader :legs, :arms

  @@gender = ["girls", "boys"]
  #class variable
  @@current_animals = []


  def self.gender
    #public method setter?
    @@gender
    #instance variable -
  end

  def self.gender=(array=[])
    #public method getter?
    @@gender = array
  end

  def self.current_animals
    @@current_animals
  end

  def self.create_with_attributes(bark, color)
    dog = self.new(bark)
    dog.color = color
    return dog
  end

  def initialize(bark, legs=4, arms=0)
    @bark = bark
    #instance variable
    @legs = legs
    @arms = arms
    @@current_animals << self
    puts "Another Mutt cataloged!
    "
  end

  def bark=(bark)
    @bark = bark
  end

  def bark
    @bark
  end

  def color
    "My hair color is #{@color}."
  end

end

Dog.gender = ["Boys", "Girls"]


class Girl < Dog


end


class Boy < Dog


end



oso = Boy.new("I have a booming WOOF.", 4, 0)
#object
oso.name = "I'm Oso."
puts oso.name
oso.color = "black and brown"
puts oso.color
puts "I have #{oso.legs} legs."
puts oso.bark
puts "I'm a #{oso.class}, thanks for asking!"



saki = Boy.new("I have a shrill screech. ", 4, 0)
saki.name = "I'm Saki."
puts saki.name
saki.color = "hairless with white main and tail."
puts saki.color
puts "I have #{saki.legs} legs."
puts saki.bark
puts "I'm a #{saki.class}, thanks for asking!"
# puts Dog.current_animals.inspect


princess = Girl.new("She rarely barks. ", 4, 0)
princess.name = "I'm Princess."
puts princess.name
princess.color = "hairless with a black/white main and tail."
puts princess.color
puts "I have #{princess.legs} legs."
puts princess.bark
puts "I'm a #{princess.class}, thanks for asking!"




buddy = Boy.new("Buddy is the roughest. ", 4, 0)
buddy.name = "I'm Buddy."
puts buddy.name
buddy.color = "hairless with a tan/white main and tail."
puts buddy.color
puts "I have #{buddy.legs} legs."
puts buddy.bark
puts "I'm a #{buddy.class}, thanks for asking!"



skunky = Girl.new("Skunky is the toughest, by far. ", 4, 0)
skunky.name = "I'm Skunky."
puts skunky.name
skunky.color = "hairless with a black/white main and tail."
puts skunky.color
puts "I have #{skunky.legs} legs."
puts skunky.bark
puts "I'm a #{skunky.class}, thanks for asking!

"


 def self.favorite_toy
  puts "And they love to play with Socks!!! " * 20
  end


# Dog.favorite_toy
# ^^ This is a Class Method.

#oso = Dog.where(:name =>"Oso").first     ?
#Class method

#oso.name
# instance method


# def whoami
#   self
# end
#When not commented out prints true to idenify keys in the hash
#Class Method Examples
#User.layer , User.find , User.inludes


my_dogs = {}
# ^ Hash name for a list of my dogs and a tidbit about them.
my_dogs[:Oso] = "My oldest and biggest."
#Oso is the Key/Name. The string is the value/description.
my_dogs[:Saki] = "The oldest and most true blood."
my_dogs[:Princess] = "Her name says it all, the biggest baby!"
my_dogs[:Buddy] = "He's much smaller than he realizes."
my_dogs[:Skunky] = "The toughest 5 lb. dog I've ever come across."



my_dogs[:Saki] = "The Loudest"
# if you needed to making a correction - change the value of the key provided
#last correction prints
my_dogs[:Saki] = "He's by far the sweetest."



my_dogs.keys
puts "I have #{my_dogs.size} dogs."

bratts = Hash.new(0)

def bratt
my_dogs.keys.each { |bratts| bratt[bratts] += 1 }
end

bratts

# def my_dogs.nsize = ["Oso", "Saki", "Princess", "Buddy", "Skunky"]
#   my_dogs.find {|my_dogs| my_dogs_length > 3}
# end


puts my_dogs.keys.sort.join(", ")
puts "Which puppy do you want to know about?"
answer = gets.chomp

# k,v
# k -> symbols (proper-cased)
# get value when k == answer


key = my_dogs.keys.find do |key|
  puts "Checking if #{key.to_s.downcase} == #{answer.downcase}"
  key.to_s.downcase == answer.downcase
end

if my_dogs[key]
  puts "Well, #{my_dogs[key]}"
else
  puts "You're outta luck"
  puts "EENNTTTTT! Try that again. And this time capitolize their name."
end
