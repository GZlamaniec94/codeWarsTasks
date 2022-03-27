# 5kyu
# What is an anagram? Well, two words are anagrams of each other if they both contain the same letters. For example:

# 'abba' & 'baab' == true

# 'abba' & 'bbaa' == true

# 'abba' & 'abbba' == false

# 'abba' & 'abca' == false
# Write a function that will find all the anagrams of a word from a list. You will be given two inputs a word and an array with words. You should return an array of all the anagrams or an empty array if there are none. For example:

# anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

# anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

# anagrams('laser', ['lazing', 'lazy',  'lacer']) => []
 
 word = "abba"
 words = ["baab", "abb", "aabb", "baa"]

def anagrams(word, words)   
    anagrams = []
    countedCharsOfWord = Hash[]
    word.chars.uniq.each {|element| 
        countedCharsOfWord.store(element, word.chars.count(element))
    }
    words.each {|element|
        elements = Hash[]
        element.chars.each { |char|
            elements.store(char, element.chars.count(char))
        }
        if countedCharsOfWord == elements
            anagrams.push(element)
        end        
    }
    anagrams
end

