# 5 kyu

#Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. 
# The function should return true if the string is valid, and false if it's invalid.
# Examples
# "()"              =>  true
# ")(()))"          =>  false
# "("               =>  false
# "(())((()())())"  =>  true
# Constraints
# 0 <= input.length <= 100

# Along with opening (() and closing ()) parenthesis, input may contain any valid ASCII characters. 
# Furthermore, the input string may be empty and/or not contain any parentheses at all. 
#Do not treat other forms of brackets as parentheses (e.g. [], {}, <>).






# my solution
def correctnessOfParenteses(array, correctness)
    if array.first == ")" || array.last == "(" || array.count("(") != array.count(")")
        correctness = false     
    end      
    correctness
end
 
def valid_parentheses(string)
    i = 1
    prtArr =  (string.split("")) - ((string.tr("()" , "")).split(""))
    holdArr = [] 
    correctness = true
    correctness = correctnessOfParenteses(prtArr, correctness)
    if correctness == false
        correctness   
    else    
        while
            i < prtArr.length        
            holdArr = prtArr[0..i]    
            if holdArr.count("(") == holdArr.count(")") 
                prtArr = prtArr[(i+1)..(prtArr.length)-1]     
                correctness = correctnessOfParenteses(prtArr, correctness)
                break
            end    
            i += 1
        end    
    end         

    correctness
end

# best practice by codewars

def valid_parentheses(string)
    open = 0
    string.chars.each do |c|
      open += 1 if c == "("
      open -= 1 if c == ")"
      return false if open < 0
    end
    open == 0
end

def valid_parentheses(string)
    ~ Regexp.new(string) == nil rescue false
end







