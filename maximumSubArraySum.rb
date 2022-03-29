# 5kyu

#The maximum sum subarray problem consists in finding the maximum sum 
# of a contiguous subsequence in an array or list of integers:

# maxSequence [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# -- should be 6: [4, -1, 2, 1]
# Easy case is when the list is made up of only positive numbers and the maximum sum 
# is the sum of the whole array. If the list is made up of only negative numbers, return 0 instead.

# Empty list is considered to have zero greatest sum. 
# Note that the empty list or array is also a valid sublist/subarray.



arr = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
# my solution
def max_sequence(arr)
    biggestSum = 0
    if !(arr.all? {|element| element < 0} || arr.empty?)
        biggestSum = arr.sort.last                    
        index = 1
        while index < arr.length
            firstIndex = 0
            lastIndex = index                    
            while lastIndex < arr.length
                p firstIndex
                p "+"
                p lastIndex
                if arr[firstIndex..lastIndex].sum > biggestSum then biggestSum = arr[firstIndex..lastIndex].sum end
                firstIndex += 1
                lastIndex += 1        
            end
            index += 1    
        end            
    end
    biggestSum         
end    

# best pracice by codewars
def max_sequence(arr)
    return 0 if arr.empty?  
    max_ending_here = max_so_far = 0    
    arr.each do |n|
      max_ending_here = [n, max_ending_here + n].max
      max_so_far = [max_so_far, max_ending_here].max
    end
    max_so_far
end


