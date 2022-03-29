# 6kyu

# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 
# below the number passed in. Additionally, if the number is negative, return 0 (for languages that do have them).

# Note: If the number is a multiple of both 3 and 5, only count it once.

# my solution
def solution(number)
    numb = 0 
    (1..number -1).to_a.each{ |num| if num%3 == 0 || num%5 == 0 then  numb += num end
    }
    numb
end

# best practice by codewars
def solution(number)
    (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end

