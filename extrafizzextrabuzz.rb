# Here is an alternate way of running the fizzbuzz script using case statements

# Firstly we define 'fizzbuzz'
# We also state the array from 1 to 100 and use the map method.
# This method maps the array to the specified rule (|number|)
# It then returns each value.
fizzbuzz = (1..100).map do |number|
# Here we define the case statement for the script
# we are saying to return each block and monitor if each one is divisible
# by 3 and by 5. If it is, it 'true' if it has a zero value (hence the use
# of ':zero?') 
    case [number % 3, number % 5].map(&:zero?)
# We use 'when' statements to define what to return when certain arguments
# are satisfied.
# Here we are saying when the number is divisible by 3 and by 5,
# both arguments are satisfied and we want the script to return "Fizzbuzz".
    when [true, true]
      "FizzBuzz"
# Here we are saying when the number is divisible by 3,
# one argument is satisfied and we want the script to return "Fizz".
    when [true, false]
      "Fizz"
# Here we are saying when the number is divisible by 5,
# one argument is satisfied and we want the script to return "Buzz".
    when [false, true]
      "Buzz"
# We use the else statement to command the script to simply return the 
# number when neither arguments are satified 
# (equivalent to 'when [false, false]') here, neither number return a zero
# value within the 'case'.
    else
      number
    end
  end

  puts fizzbuzz

# Note: Being completely tansparent, this script isn't written from scratch 
# I based it on another script I found whilst researching and took the time 
# to break it down, look into various definitions and understand what is 
# going on.