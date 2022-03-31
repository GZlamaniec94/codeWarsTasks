#4 kyu

# A format for expressing an ordered list of integers is 
# to use a comma separated list of either

#  -individual integers
#  - or a range of integers denoted by the starting integer separated from the end integer in the range by a dash, '-'. The range includes all integers in the interval including both endpoints. It is not considered a range unless it spans at least 3 numbers. For example "12,13,15-17"
#  -Complete the solution so that it takes a list of integers in increasing order and returns a correctly formatted string in the range format.

# Example:

# solution([-10, -9, -8, -6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20])
# returns "-10--8,-6,-3-1,3-5,7-11,14,15,17-20"

# my solution
def solution(listOfIntegers)
    strRange = ""
    ranges = []
    len = listOfIntegers.length
    i = 0
    while i < len  
      j = 0
      while j < (listOfIntegers.length) - 1 
        if (listOfIntegers[j] - listOfIntegers[j+1]).abs != 1
            ranges.push(listOfIntegers[0..j])
            listOfIntegers -= listOfIntegers[0..j]
            break
        end 
        j+=1      
      end
      i+=1
    end
    ranges.push(listOfIntegers)   
    
    ranges.each {|range| 
      if range.length == 1
        strRange += range[0].to_s + ","
      elsif range.length == 2
        strRange += range.first.to_s + "," + range.last.to_s + ","
      else
        strRange += range.first.to_s + "-" + range.last.to_s + "," 
      end
    }
    
    
    strRange.chop
end

# best practice by codewars
def solution(list)
    list.chunk_while { |n1, n2| n2 - n1 == 1 }
        .map { |set| set.size > 2 ? "#{set.first}-#{set.last}" : set }
        .join(',')
end






 







