greeting = "Welcome!"

name1 = "larry"
name2 = "curly"
name3 = "moe"
name4 = "shemp"

health1 = 60
health2 = 125
health3 = 100
health4 = 90

# puts "Players: \n\t#{name1}\n\t#{name2}\n\t#{name3}"
# puts "#{name1.capitalize} has a health of #{health1}"
# puts "#{name2.upcase} has a health of #{health2}"
# puts "#{name3.capitalize} has a health of #{health3}".center(50, '*')
# puts "#{name4.capitalize.ljust(35, ".")} #{health4} health"

# experimenting with pointing vairables to eachother
# health2 = health1
# puts "\n\n\n#{name2.upcase} has a health of #{health2}"

#returns current time in HH:MM:SS format
def current_time
      Time.new.strftime("%I:%M:%S")
end

#returns player's name and health at stated time
def say_hello(name, health=100)
    "I'm #{name.capitalize} with a health of #{health} as of #{current_time}"
end

puts say_hello(name1, health1)
puts say_hello(name2, health2)
puts say_hello(name3)
puts say_hello(name4, health4)