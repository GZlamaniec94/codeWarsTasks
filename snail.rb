# 4 kyu
# Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.

# array = [[1,2,3],
#         [4,5,6],
#         [7,8,9]]
# snail(array) #=> [1,2,3,6,9,8,7,4,5]
# For better understanding, please follow the numbers of the next array consecutively:

# array = [[1,2,3],
#         [8,9,4],
#         [7,6,5]]
# snail(array) #=> [1,2,3,4,5,6,7,8,9]

array = [[856,820,937,747,514,1,647,299], [941,591,281,815,73,388,413,199],[60,139,327,766,757,531,8,135],[707,810,303,976,810,678,899,288],[923,712,937,301,281,527,525,253], [175,747,886,304,366,34,769,353], [209,236,368,779,775,331,835,821],[232,839,512,510,692,234,960,302]]
# my solution
def snail(array)
    snailArray = []
    
    if array.empty?
      snailArray = [[]]
    else
      while array.any?
    
          array[0].each{|element| snailArray.push(element)}
          array.delete(array[0])
    
          if array.empty?
            break
          else
            array.each{|element| snailArray.push(element.last)
                            element.delete_at((element.length)-1) 
            }
          end  
    
          if array.empty?
            break
          else
            array.last.reverse.each{|element| snailArray.push(element)}
            array.delete(array.last)
          end  
    
          if array.empty?
            break
          else 
            array.reverse.each{|element| snailArray.push(element.first)
                element.delete_at(0) 
            }
          end  
    
    
        end
        
    end
      snailArray
end

# best practice by codewars

def snail(array)
    array.empty? ? [] : array.shift + snail(array.transpose.reverse)
end

