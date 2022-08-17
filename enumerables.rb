require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  # your code here
  string_array = spicy_foods.collect{|element|element[:name]}
end

get_names(spicy_foods)

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  # your code here
  hash_array = spicy_foods.filter{|element|element[:heat_level]>5}
end

spiciest_foods(spicy_foods)

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  # your code here
  spicy_foods.each{|element|puts "#{element[:name]} (#{element[:cuisine]}) | Heat Level: #{"🌶"*element[:heat_level]}"}
end

print_spicy_foods(spicy_foods)

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  # your code here
  spicy_foods.find{|element|element[:cuisine] == cuisine}
end

get_spicy_food_by_cuisine(spicy_foods,"American")

# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  # your code here
  spicy_foods.sort do |food1,food2|
    food1[:heat_level] <=> food2[:heat_level]
  end
end

sort_by_heat(spicy_foods)
# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # your code here
  # spicy_foods.filter{|element|puts "#{element[:name]}(#{element[:cuisine]})|Heat Level:#{"🌶"*element[:heat_level] > 5}"}
  spicy = spicy_foods.filter do |element|
    element[:heat_level] > 5
  end
  spicy.map{|element|puts "#{element[:name]} (#{element[:cuisine]}) | Heat Level: #{"🌶"*element[:heat_level]}"}
  # binding.pry
end

print_spiciest_foods(spicy_foods)

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  # your code here
  total = spicy_foods.map do |element|
    element[:heat_level]
  end
  total.sum / total.length
  # binding.pry
end


average_heat_level(spicy_foods)