# Outputs what is defined in the quotation marks.
# Print doesn't add a new line after it's execution. 
print "What's your name? "

# Requires user to input a value. In this case, their name.
# ".chomp" is used because I strongly believe Mattan was really hungry when he recorded the video
# Just kidding, ".chomp" removes any trailing new lines from the string.
name = gets.chomp

# Outputs what is defined in the quotation marks (asks age).
# Print doesn't add a new line after it's execution.
print "how old are you? "

# Requires user to input a value, being their age.
# ".chomp" again. By this point, Mattan was starving.
# ".to_i" defines the numerical input from the user to be an integer (a whole number).
age = gets.chomp.to_i

# Defines string for age in dog years. 1 human year = 7 dog years.
age_in_dog_years = age / 7

# Outputs the name input by the user and their age calculated in dog years.
# Added "Woof" for dramatic effect.
puts "Your name is #{name}, and your age is #{age_in_dog_years}. Woof!"