# 6kyu
# You are given an array (which will have a length of at least 3, but could be very large) containing integers. 
# The array is either entirely comprised of odd integers or entirely comprised of even integers 
# except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

# Examples
# [2, 4, 0, 100, 4, 11, 2602, 36]
# Should return: 11 (the only odd number)

# [160, 3, 1719, 19, 11, 13, -21]
# Should return: 160 (the only even number)

# my solution
def find_outlier(integers)
    oddOrEvenIntegers = integers.map {|number| number % 2 }
    oddOrEvenIntegers.count(1) > 1 ? integers[oddOrEvenIntegers.index(0)] : integers[oddOrEvenIntegers.index(1)]
end

# best practice by codewars
def find_outlier(integers)
    integers.partition(&:odd?).find(&:one?).first
end
