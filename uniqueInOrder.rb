# 6 kyu
# Implement the function unique_in_order which takes as argument a sequence 
# and returns a list of items without any elements with the same value 
# next to each other and preserving the original order of elements.

# For example:

# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

# my solution
def unique_in_order(iterable)    
    arrayOfElements = []
    if iterable.class == Array
        arrayOfElements = iterable.uniq
    else     
        while iterable.length > 0
            i=0
            element = ""
            loop do    
                element = (iterable[0..i]) 
                break if iterable[i] != iterable[i+1]
                i+=1
            end    
            arrayOfElements.push(element.to_s.split("").uniq.join)
            iterable = iterable[i+1..((iterable.length) - 1)]
        end
    end        
    arrayOfElements
end


# best practice by codewara
def unique_in_order(iterable)
    (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)
end