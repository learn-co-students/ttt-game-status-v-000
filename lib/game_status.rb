# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle Row
  [6,7,8], #Bottom row
  [0,3,6], #first columns
  [1,4,7], #second columns
  [2,5,8], #last column
  [0,4,8], #first diagonal
  [2,4,6] #second diagonal
]

#determines if win is true or false
def won?(board)
    res = false
    WIN_COMBINATIONS.each do |win_combination|
      board_entries = [board[win_combination[0]], board[win_combination[1]], board[win_combination[2]]]
      board_entries == ["X", "X", "X"] || board_entries == ["O", "O", "O"] ? res = win_combination : false
    end
    res

end

#If the board includes "" or " ", the board is not full.
def full?(board)
  board.include?("") || board.include?(" ") ? false : true
end

#if nobody won but the board is full, it's a draw
def draw?(board)
  won?(board) == false && full?(board) == true ? true : false
end

# the game is over when somebody wins or there is a draw
def over?(board)
  draw?(board) == true || won?(board) != false ? true : false
end

def winner(board)
  win_combination = won?(board)
  if win_combination == false
    nil
  elsif board[win_combination[0]] == "X"
    return "X"
  elsif board[win_combination[0]] == "O"
    return "O"
  end
end
