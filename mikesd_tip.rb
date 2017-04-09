# Outputs what is in the quotation marks.
puts "Tip Calculator"

# Outputs what is in the quotation marks.
puts "How much is your bill?"

# Gets user input and relates it to "bill".
# The ".to_f" defines the input value as a float integer and recognises decimal places.
# (Instead of assuming input is a whole number/integer).
bill = gets.to_f

# Specifies the variables for 15, 18 and 20%.
# Each %age is a function of the input value of the bill 
# multiplied by it's value as a number.
fifteen_percent_tip = bill * 0.15
eighteen_percent_tip = bill * 0.18
twenty_percent_tip = bill * 0.2

# Specifies the tip value as a variable.
# Totals the tip value with the input specified by the user as the "bill"
# """ allows for the tip value to be on seperate lines 
# and also to keep column length short and relatively neat.
tip_values = """
15% tip: $#{fifteen_percent_tip}, Total: $#{fifteen_percent_tip + bill} 
18% tip: $#{eighteen_percent_tip}, Total: $#{eighteen_percent_tip + bill}
20% tip: $#{twenty_percent_tip}, Total: $#{twenty_percent_tip + bill}"""

# Outputs what is in the quotation marks.
puts "Your tips values are:"
# Outputs what was specified in the tip_values variable above in the command line.
puts tip_values