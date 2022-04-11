# 6 kyu
# As the name may already reveal, it works basically like a Fibonacci, 
# but summing the last 3 (instead of 2) numbers of the sequence to generate the next. 

# So, if we are to start our Tribonacci sequence with [1, 1, 1] 
# as a starting input (AKA signature), we have this sequence:
    
# [1, 1 ,1, 3, 5, 9, 17, 31, ...]
# But what if we started with [0, 0, 1] as a signature? As starting with [0, 1] 
# instead of [1, 1] basically shifts the common Fibonacci sequence by once place, 
# you may be tempted to think that we would get the same sequence shifted by 2 places, 
# but that is not the case and we would get:
    
# [0, 0, 1, 1, 2, 4, 7, 13, 24, ...]
# Well, you may have guessed it by now, but to be clear: 
# you need to create a fibonacci function that given a signature array/list, 
# returns the first n elements - signature included of the so seeded sequence.
    
# Signature will always contain 3 numbers; n will always be a non-negative number; 
# if n == 0, then return an empty array (except in C return NULL) 
# and be ready for anything else which is not clearly specified ;)

# my solution
def tribonacci(signature,n)
    if n == 0
        signature = []
    elsif n == 1
        signature = [signature.first]
    else    
        while signature.length < n
            signature.push(signature[(signature.length) -3]+signature[(signature.length) -2]+signature[(signature.length) -1])
        end
    end  
    signature    
end

# best pracitce by codewars
def tribonacci(signature,n)
    n.times.map{signature << signature.inject(:+); signature.shift}
end