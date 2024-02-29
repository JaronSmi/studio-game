greeting = "Welcome!"

name1 = "larry"
name2 = "curly"
name3 = "moe"
name4 = "shemp"

health1 = 60
health2 = 125
health3 = 100
health4 = 90

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