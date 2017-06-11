# Helper Method

def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

#board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top rows
  [3, 4, 5], # middle row
  [6, 7, 8], # bottom row
  [0, 4, 8], # Left diagonal
  [2, 4, 6], # Right diagonal
  [0, 3, 6], # Left column
  [1, 4, 7], # middle column
  [2, 5, 8] # Right column
]

#Definition of indices that comprise a win
Top_row_win =        [0, 1, 2], # Top rows
middle_row_win =     [3, 4, 5], # middle row
bottom_row_win =     [6, 7, 8], # bottom row
left_diagonal_win =  [0, 4, 8], # Left diagonal
right_diagonal_win = [2, 4, 6], # Right diagonal
left_column_win =    [0, 3, 6], # Left column
middle_column_win =  [1, 4, 7], # middle column
right_column_win =   [2, 5, 8] # Right column

def won?(board)
  #board.detect {|patt| WIN_COMBINATIONS.include? (patt)}
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination

  #  elsif board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  #    false
    end

  end

end


def full?(board)
  board.all? do |token|
    if token == "X" || token == "O"
    true
    end
  end
end

def over?(board)
  if won?(board) || draw?(board)

    true
  end
end


def draw?(board)
  if !won?(board) && full?(board)
    true
  end

end

def winner(board)
  token = won?(board)
  if token != nil
    return board[token[0]]
  else
    nil
  end
end
