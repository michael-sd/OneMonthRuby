# Strings are text surrounded by quotes
# Both single ('') and double ("") quotes are used
# Examples: "dinosaurs", '2112', "I'm lovin' it!"

# Defines variable "kanye_quote"
# Reminds us all of how far Kanye West's head is up his ass.
# This use of backslash allows the quote to be split up into multiple lines
# but when run in the command line, appears as one line.
kanye_quote = "My greatest pain in life \
is that I will never be able \
to see myself perform live."

# Defines variable "hamilton_quote"
# The use of backslash in this situation allows for a double quote.
# This defines the backslashed quotation marks to escape the sequence and be used inside
# a set of double quotes ("").
hamilton_quote = "Well, the word got around, they said, \"This kid's insane, man\""

# Specifies the selected song verse/poem from first exercise as a variable.
# """ allows for the verse to be on seperate lines
# Also keeps column length short and relatively neat.
nobodys_perfect = """
Look mama we made it
Your son out in Barbados
Cheese, eggs and potatoes
Smokin' weed on the beach as my mind workin' like Plato's"""

# outputs the variable "nobodys_perfect" and it's associated value.
# ".reverse" instructs the associated value to be displayed in reverse.
puts nobodys_perfect.reverse