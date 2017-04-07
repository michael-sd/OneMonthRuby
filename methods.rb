# Methods
# Also known as functions. Think of a language with
# nouns and verbs. If variables are the nouns
# the methods are the verbs.
# E.g. The boy kicks. (Noun: the boy, verb: kicks)
# E.g. The boy kicks the cat (Nouns: the boy, the cat. Verb: kicks)

# This method takes two arguments
def print_two(thing, another_thing)
	puts "thing 1: #{thing}, thing 2: #{another_thing}"
end

# This takes just one argument
def print_one(thing)
	puts "thing: #{thing}"
end

# This takes no arguments
def print_none
	puts "I got nothin'"
end

print_two("Michael", "Santo Domingo	")
print_one("Yo!")
print_none

def add(a, b)
	# Write a method that adds two numbers together
	puts "ADDING #{a} + #{b}"
	return a + b
end

age = add(20, 6)


def subtract(a, b)
	puts "SUBTRACTING #{a} - #{b}"
	return a - b
end

height = subtract(186, 6)


def multiply(a, b, c)
	#Added extra variable "c" for own experimentation
	puts "MULTIPLYING #{a} * #{b} * #{c}"
	return a * b * c
end

weight = multiply(40, 2, 1)


def divide(a, b)
	puts "DIVIDING #{a} / #{b}"
	return a / b
end

iq = divide(100, 2)

puts "Age: #{age} 
Height: #{height} 
Weight: #{weight} 
IQ: #{iq}"

#Brackets can be left out when defining variables e.g. iq = divide(100, 2)
#can be written as iq = divide 100, 2

#"return" doesn't need to be stated at the end of a definition.
#Ruby will return what is in the last line of the definition.
#e.g. return a / b can be written as a / b

#An output of "nil" basically means nothing was returned,
#the output is without value.

#Create a method that takes text, capitilises it and then reverses it