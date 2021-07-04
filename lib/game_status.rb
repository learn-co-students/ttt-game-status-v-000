# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top_row
  [3,4,5], # middle_row
  [6,7,8], # bottom_row
  [0,3,6], # left_row
  [1,4,7], # center_row
  [2,5,8], # right_row
  [0,4,8], # diagonal_one
  [6,4,2]  # diagonal_two
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
    # grab each index from the win_combination that composes a win.
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      win_set = [win_index_1, win_index_2, win_index_3]
      return win_set # return the win_combination indexes that won.
    end
  end
  false
end

def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

def draw?(board) #accepts a board and returns true if the board has not been won and is full and false if the board is not won and the board is not full, and false if the board is won.
  if !won?(board) && full?(board)
    return true
  elsif !won?(board) && !full?(board)
    return false
  else won?(board)
    return false
  end
end

def over?(board) #accepts a board and returns true if the board has been won, is a draw, or is full.
  if draw?(board) || won?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board) #accept a board and return the token, "X" or "O" that has won the game given a winning board.
  if won?(board)
    return board[won?(board)[0]]
  end
end
