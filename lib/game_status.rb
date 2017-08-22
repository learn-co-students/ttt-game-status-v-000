WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6],
  [0,4,8]
]
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

def won?(board)
  if board.none?{|move| move != " "}
    return false
  end

  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if (position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O")
      return win_combination
    end

  end
  if board.any?{|move| move != " "}
    return false
  end
end

def full?(board)
  board.all? do |element|
    element == "X" || element == "O"
  end
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
 end
end

def winner(board)
  win_array = won?(board)

  if win_array
    board[win_array.to_a[0]]
  else
    nil
  end
end
