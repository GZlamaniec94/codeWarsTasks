str = "camelCasing"

# my solution

def solution (string)
   string.gsub(/(?<=[a-z])(?=[A-Z])/, ' ')
end    

# best practice

def bestPracticeSolution(string)
    string.gsub /([A-Z])/, ' \1'
end

p solution(str)


# 6 kyu
# Complete the solution so that the function will break up camel casing, using a space between words.

# Example
# "camelCasing"  =>  "camel Casing"
# "identifier"   =>  "identifier"
# ""             =>  ""