# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
  ]

def won?(board)
  WIN_COMBINATIONS.any? do |index| 

    if board[index[0]] == "X" && 
      board[index[1]] == "X" && 
      board[index[2]] == "X" || 
      board[index[0]] == "O" && 
      board[index[1]] == "O" && 
      board[index[2]] == "O"
      return index
    else
      false
    end
  end
end

def full?(board)
 if board.any? {|i| i == " "}
  false
 else
  true
  end
end

def draw?(board)
  !won?(board) && full?(board)
end 

def over?(board)
	won?(board) || draw?(board) || full?(board)
end

def winner(board)
    if won?(board)
       winning_line = won?(board)
       return board[winning_line[0]]
    end
end