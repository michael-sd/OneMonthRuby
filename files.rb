puts "What is the file name?"
filename = gets.chomp

file = open(filename, "w")
# "w" is a ruby open file mode.
# It allows for the file to be opened as a "write-only file".
# Write-only overwrites the existing file or creates a new file.

print "What should I put in file? "
line1 = gets.chomp

print "What's the second thing I should put in file? "
line2 = gets.chomp


file.write(line1)
file.write("\n") #puts a line break between line 1 and line 2
file.write(line2)

file.close