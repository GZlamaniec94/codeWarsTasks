# 6 kyu
# Complete the method/function so that it converts dash/underscore delimited words into camel casing. 
# The first word within the output should be capitalized only if the original word was capitalized 
# (known as Upper Camel Case, also often referred to as Pascal case).

# Examples
#  "the-stealth-warrior" gets converted to "theStealthWarrior"
#  "The_Stealth_Warrior" gets converted to "TheStealthWarrior"

# my solution
def to_camel_case(str)       
    if str.nil? || str == ''
       str = ''
    elsif str.split("").any?("_")
      str = str.gsub!("_","-").split(/\W+/).map {|element| element == str.split(/\W+/).first ? element : element.capitalize}.join
    else
        str = str.split(/\W+/).map {|element| element == str.split(/\W+/).first ? element : element.capitalize}.join
    end     
end

# best practice by codewars
def to_camel_case(str)
    str.gsub(/[_-](.)/) {"#{$1.upcase}"}
end

