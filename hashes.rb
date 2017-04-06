person = {name: "Michael", age: "26", height: 6 * 12 + 0}

puts person

# You access parts of a hash using a :symbol
puts person[:name]

# You can use a symbol to set a value also
person[:city] = "London"
puts person[:city]
puts person

person.each do |key, value|
	puts "The key is: #{key}, the value is: #{value}"
end