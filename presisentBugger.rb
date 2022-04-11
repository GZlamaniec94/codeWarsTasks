# 6 kyu
# Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, 
# which is the number of times you must multiply the digits in num until you reach a single digit.

# For example (Input --> Output):

# 39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
# 999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
# 4 --> 0 (because 4 is already a one-digit number)

# my solution
def persistence(n, i=0)
    if n<10
      0
    else
      arrN = n.to_s.split("")
      arrN.map!{|element| element.to_i }   
      num = 1
      arrN.each {|number| num*=number} 
      arrN = num.to_s.split("")
      arrN.map!{|element| element.to_i }   
      n = num
      if n < 10
        i + 1
      else    
        i += 1
        p n
        persistence(n, i)
      end
    end
  end
# best practice by codewars
def persistence(n)
    n < 10 ? 0 : 1 + persistence(n.to_s.chars.map(&:to_i).reduce(:*))
end