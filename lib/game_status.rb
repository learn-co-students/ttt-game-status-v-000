# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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

def won?(board)
  # if won?(board) will be a true statement
  # won?(board) returns [0,1,2]
  # you can't won?(board) == false, you can do won?(board) == nil or !won?(board)
  WIN_COMBINATIONS.detect do |win_combination_array| #on first loop [0,1,2]
    # we set variables to each of the indexes in the win_combination array
    win_index_1 = win_combination_array[0] # first element of win_combination is 0
    win_index_2 = win_combination_array[1] # 1
    win_index_3 = win_combination_array[2] # 2

    # we access the board with the win_index variable values in order to get the "X", "O", or " "
    position_1 = board[win_index_1] # whatever's in the board at position of win_index_1 . since win_index_1's value is 0, it's like saying position_1 = board[0]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == position_2 && position_2 == position_3 && position_1 != " "
      win_combination_array
    end
  end

end

def full?(board) #accept a board and return true if every element in the board contains either an "X" or an "O"
  board.all? do |square|
    if square == "X" || square == "O"
      true
    end
  end
end

def draw?(board)
  if won?(board) == nil && full?(board) == true
    true
  end
end

def over?(board)
  if draw?(board) == true || won?(board) == true || full?(board) == true
    true
  end
end

def winner(board)
  WIN_COMBINATIONS.detect do |win_combination_array|

  win_index_1 = win_combination_array[0]
  win_index_2 = win_combination_array[1]
  win_index_3 = win_combination_array[2]

  position_1 = board[win_index_1]
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

    if position_1 == position_2 && position_2 == position_3 && position_1 == "X"
  return "X"
    elsif position_1 == position_2 && position_2 == position_3 && position_1 == "O"
  return "O"
    end
  end
end
