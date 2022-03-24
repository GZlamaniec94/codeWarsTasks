# 5 kyu
# Move the first letter of each word to the end of it, then add "ay" to the end of the word. Leave punctuation marks untouched.

# Examples
# pig_it('Pig latin is cool') # igPay atinlay siay oolcay
# pig_it('Hello world !')     # elloHay orldway !

# my solution
text = 'Pig latin is cool'
def pig_it(text) 
    strArr = text.split
    strArr.map!{|element| 
       if element.match(/^[[:alpha:][:blank:]]+$/) 
        element = element + (element[0]) + "ay"
        element = element[1..-1]
       else
        element
       end 
    }
    newTxt = strArr.join(" ")
    newTxt
end

# best practise

def pig_it text
    text.gsub(/(\w)(\w+)*/, '\2\1ay')
end