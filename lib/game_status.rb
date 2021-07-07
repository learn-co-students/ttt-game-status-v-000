# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left row
  [1,4,7], #middle row
  [2,5,8], #right row
  [0,4,8], #diagonal left to right
  [2,4,6] #diagonal right to left
]

def won?(board)

  WIN_COMBINATIONS.each do |combo|
    win_index_1 = combo[0]
    win_index_2 = combo[1]
    win_index_3 = combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X")
      return combo
    elsif (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return combo
    else
      false
    end

  end

  if board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"] || board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    false
  end
end

def full?(board)
  board.select{|i| i =="X" || i == "O"}.length == 9
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board) != false
    board[won?(board)[0]] #returns the first element in the WIN_COMBINATIONS array as the index for the board
  end
end
