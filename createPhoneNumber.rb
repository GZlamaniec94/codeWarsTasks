# 6 kyu
# Write a function that accepts an array of 10 integers (between 0 and 9), 
# that returns a string of those numbers in the form of a phone number.

# Example
# createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"

# my solution
def create_phone_number(numbers)
    "(#{numbers[0]}#{numbers[1]}#{numbers[2]}) #{numbers[3]}#{numbers[4]}#{numbers[5]}-#{numbers[6]}#{numbers[7]}#{numbers[8]}#{numbers[9]}"
end

# best practice by codewars
def createPhoneNumber(array)
    '(%d%d%d) %d%d%d-%d%d%d%d' % array
end 