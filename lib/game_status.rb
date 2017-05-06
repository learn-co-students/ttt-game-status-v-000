# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
    [0,1,2], #Horizontal/Top row
    [3,4,5], #Horizontal/Middle row 
    [6,7,8], #Horizontal/Bottom row
    [0,3,6], #Vertical/First Row
    [1,4,7], #Vertical/Second Row
    [2,5,8], #Vertical/Third Row
    [0,4,8], #Diagonal/Upper left
    [2,4,6]  #Diagonal/Upper right
    ]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
        if (board[combo[0]]) == "X" && (board[combo[1]]) == "X" && (board[combo[2]]) == "X"
            return combo    
        elsif (board[combo[0]]) == "O" && (board[combo[1]]) == "O" && (board[combo[2]]) == "O"
            return combo
        end
        false
    end
end
   
def full?(board) 
    board.all? do |token|
        token == "X" || token == "O"
    end
end  

def draw?(board)
    if !won?(board) && full?(board)
        true
    elsif !won?(board) && !full?(board)
        false
    elsif won?(board)
        false
    end
end

def over?(board)
    if won?(board) || draw?(board) || full?(board)
    true
    end  
end

def winner(board)
     WIN_COMBINATIONS.detect do |combo|
        if (board[combo[0]]) == "X" && (board[combo[1]]) == "X" && (board[combo[2]]) == "X"
            return "X"    
        elsif (board[combo[0]]) == "O" && (board[combo[1]]) == "O" && (board[combo[2]]) == "O"
            return "O"
        end
        nil
    end
end