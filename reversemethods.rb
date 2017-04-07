def capitalize_and_reverse(text)
	capitalized_text = text.capitalize
	capitalize_and_reversed_text = capitalized_text.reverse
	return capitalize_and_reversed_text
end

puts capitalize_and_reverse("heavy is the head that wears the crown")

#Shorter method:
def capitalize_and_reverse(text)
	capitalized_text = text.capitalize
	capitalized_text.reverse
end

puts capitalize_and_reverse("heavy is the head that wears the crown")

#Even shorter method - chaining methods together

def capitalize_and_reverse(text)
	text.capitalize.reverse
end

puts capitalize_and_reverse("heavy is the head that wears the crown")