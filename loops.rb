fruits = ["Apples", "Oranges", "Bananas"]

fruits.each do |fruit|
	puts "This time the fruit is: #{fruit}"
end

(1..10).each do |number|
	puts "#{number} squared is #{number * number}"
end

# Alternative of the same piece of code:
(1..10).each { |number| puts "#{number} squared is #{number * number}" }

# (The first time...)
# fruit = "apples"
# puts "This time the fruit is: #{fruit}"
# (The second time...)
# fruit = "oranges"
# puts "This time the fruit is: #{fruit}"
# Reaches the end, nothing else in array, so the loop stops.


# array_name.size tells you how many items are in an array