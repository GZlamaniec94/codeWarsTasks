# 5 kyu
# Write a function dirReduc which will take an array of strings and returns an array of strings with the needless directions removed 
# (W<->E or S<->N side by side).

# The directions are, for example, the following (depending on the language):

# ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].
# or
# { "NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST" };
# or
# [North, South, South, East, West, North, West]
# You can immediatly see that going "NORTH" and immediately "SOUTH" is not reasonable, better stay to the same place! So the task is to give to the man a simplified version of the plan. A better plan in this case is simply:

# ["WEST"]
# or
# { "WEST" }
# or
# [West]

a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
# my
def dirReduc(a)
    indexElement1 = 0
    indexElement2 = 1
    while indexElement2 < a.length
        if (a[indexElement1] == "NORTH" && a[indexElement2] == "SOUTH") || (a[indexElement1] == "SOUTH" && a[indexElement2] == "NORTH")
            a.slice!(indexElement1..indexElement2)        
            indexElement1 = 0
            indexElement2 = 1
        elsif (a[indexElement1] == "WEST" && a[indexElement2] == "EAST") || (a[indexElement1] == "EAST" && a[indexElement2] == "WEST")
            a.slice!(indexElement1..indexElement2)        
            indexElement1 = 0
            indexElement2 = 1
        else
            indexElement1 += 1
            indexElement2 += 1
        end
    end
    a
end

# best pracitce by codewars
OPPOSITE = {
    "NORTH" => "SOUTH",
    "SOUTH" => "NORTH",
    "EAST"  => "WEST",
    "WEST"  => "EAST"
  }
  
def dirReduc(arr)
    stack = []
    arr.each do |dir|
      OPPOSITE[dir] == stack.last ? stack.pop : stack.push(dir)
    end
    stack
end

