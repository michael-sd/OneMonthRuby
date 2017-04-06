# "Write a program that prints the numbers from 1 to 100. 
# But for multiples of three print “Fizz” instead of the number 
# and for the multiples of five print “Buzz”. 
# For numbers which are multiples of both three and five 
# print “FizzBuzz”."

# % (modulo) tells you what is left over when you
# you divide one number by another number.
# e.g. number % 3 == 0

(1..100).each do |number|

if (number % 5 == 0) && (number % 3 == 0)
	puts "Fizzbuzz"
elsif number % 3 == 0
	puts "Fizz"
elsif number % 5 == 0
	puts "Buzz"
else
	puts number
end
end