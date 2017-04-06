puts "Do you want to hear a joke? (Yes or No)"
answer = gets.chomp

if answer == "yes" || answer == "Yes" || answer == "y" || answer == "Y"
	puts "I'm against picketing, but I don't know how to show it."
	# RIP Mitch Hedgberg
elsif answer == "No" || answer == "no"
	puts "Fine"
elsif answer == "Maybe" || answer == "maybe"
	puts "What's green and has wheels? \nGrass, I lied about the wheels"
else
	puts "I don't understand"
end

# if something
# 	# code
# elsif something_else
# 	# code
# elsif a_third_thing
# 	# code
# else
# 	# code
# end