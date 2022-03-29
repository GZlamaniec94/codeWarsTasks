# 4kyu
# Sudoku is a game played on a 9x9 grid. The goal of the game is to fill all cells of the grid with digits from 1 to 9, 
# so that each column, each row, and each of the nine 3x3 sub-grids (also known as blocks) contain all of the digits from 1 to 9.
# (More info at: http://en.wikipedia.org/wiki/Sudoku)

# Sudoku Solution Validator
# Write a function validSolution/ValidateSolution/valid_solution() that accepts a 2D array representing a Sudoku board, 
# and returns true if it is a valid solution, or false otherwise. The cells of the sudoku board may also contain 0's, 
# which will represent empty cells. Boards containing one or more zeroes are considered to be invalid solutions.

# The board is always 9 cells by 9 cells, and every cell only contains integers from 0 to 9.


board = [[1, 3, 2, 5, 7, 9, 4, 6, 8],
         [4, 9, 8, 2, 6, 1, 3, 7, 5],
         [7, 5, 6, 3, 8, 4, 2, 1, 9],
         [6, 4, 3, 1, 5, 8, 7, 9, 2],
         [5, 2, 1, 7, 9, 3, 8, 4, 6],
         [9, 8, 7, 4, 2, 6, 5, 3, 1],
         [2, 1, 4, 9, 3, 5, 6, 8, 7],
         [3, 6, 5, 8, 1, 7, 9, 2, 4],
         [8, 7, 9, 6, 4, 2, 1, 3, 5]]
# my solution
def validSolution(board)
    valid = true    
    box = []
    i = 0 
    while i < board.length         
        if board[i].any?(0)
            valid = false
            break
        end
        if board[i].uniq.length < 9 
            valid = false 
            break     
        end    
        if board.transpose[i].uniq.length < 9             
            valid = false 
            break 
        end             
        i += 1  
    end  
    board.each{|line|
        i = 0    
         while i < 3
             box.push(line[i])   
             i += 1
         end    
     }    
     board.each{|line|
         i = 3    
          while i < 6
              box.push(line[i])   
              i += 1
          end    
     }
     board.each{|line|
         i = 6    
          while i < 9
              box.push(line[i])   
              i += 1
          end    
     }
     
     while box.length > 0
        if box[0..8].uniq.lenght < 9 
             valid = false
             break 
         else   
           box = box.delete[0..8]
         end    
     end     
    valid
end

# best practice by codewars

def validSolution(board)
    sudoku_sections = rows(board) + columns(board) + blocks(board)
    sudoku_sections.all?{|section| contains_all_nine?(section)}
end
  
def rows(board)
    board
end
  
def columns(board)
    board.transpose
end
  
def blocks(board)
    board.map{|row| row.each_slice(3).to_a}.transpose.flatten.each_slice(9).to_a
end
  
def contains_all_nine?(section)
    [1,2,3,4,5,6,7,8,9].to_set == section.to_set
end


