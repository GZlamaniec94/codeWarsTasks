# You live in the city of Cartesia where all roads are laid out in a perfect grid. 
# You arrived ten minutes too early to an appointment, 
# so you decided to take the opportunity to go for a short walk. 
# The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button 
# it sends you an array of one-letter strings representing directions 
# to walk (eg. ['n', 's', 'w', 'e']). You always walk only a single block for each letter 
# (direction) and you know it takes you one minute to traverse one city block, 
# so create a function that will return true if the walk the app gives you will take you exactly ten minutes 
# (you don't want to be early or late!) and will, of course, return you to your starting point. Return false otherwise.

# Note: you will always receive a valid array (string in COBOL) containing a random assortment of direction letters 
# ('n', 's', 'e', or 'w' only). It will never give you an empty array (that's not a walk, that's standing still!).

# my solution
def is_valid_walk(walk)
    isValid = false
    if walk.size == 10 && (walk.uniq.size == 4 || walk.uniq.size == 2)
        if  walk.uniq.size == 2
            isValid = true if walk.count(walk.uniq.first) == walk.count(walk.uniq.last)
        else    
            isValid = true if walk.count("n") == walk.count("s") && walk.count("w") == walk.count("e")
        end   
    else    
        isValid
    end   
end

# best practice by codewars
def isValidWalk1(walk)
    walk.count('w') == walk.count('e') and
    walk.count('n') == walk.count('s') and
    walk.count == 10
end

