# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end
#winning combinations constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]
#define if there is a winner
def won?(board)
 WIN_COMBINATIONS.each do |win_combo|
   if board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
     return win_combo
   elsif board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
     return win_combo
    end
  end
 return false
end

#define if board is full
def full?(board)
  if board.include?(" ") || board.include?("") #empty spaces on board
    return false
  else
    return true
  end
end

#define if game is a draw
def draw?(board)
  if !won?(board) && full?(board) #no win and the board is full
    return true
  end
end

# define if game is over by Win, Full or draw
def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  end
end

# who is the winner also if there wasn't a winner (nil)
def winner(board)
  WIN_COMBINATIONS.detect do |win_combo|
    if board[win_combo[0]] == "X" && board[win_combo[1]] == "X" && board[win_combo[2]] == "X"
      return "X"
    elsif board[win_combo[0]] == "O" && board[win_combo[1]] == "O" && board[win_combo[2]] == "O"
      return "O"
    else
    end
  end
end
