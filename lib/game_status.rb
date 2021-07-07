# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], #top row
  [3, 4, 5], #middle row
  [6, 7, 8], #bottom row
  [0, 3, 6], #first column
  [1, 4, 7], #second column
  [2, 5, 8], #third column
  [0, 4, 8], #diagonal top left to bottom right
  [2, 4, 6]  #diagonal top right to bottom left
]

#board = ["X", "O", "X", "O", "X", "X", "O", "O", "X"]
#won?(["X", "X", "X", " ", " ", " ", " ", " ", " "])
def won?(board)
  WIN_COMBINATIONS.each do |combo_array|
      win_index_1 = combo_array[0]
      win_index_2 = combo_array[1]
      win_index_3 = combo_array[2]

      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

      if position_1 == position_2 && position_1 == position_3 && position_taken?(board,win_index_1)
        return [win_index_1, win_index_2, win_index_3]
      end
  end
  return false
end

#won?(board)

def full?(board)
  board.none?{|i| i == " "}
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  if draw?(board) == true || full?(board) == true || won?(board) != false
    return true
  end
end

def winner(board)
if won?(board) != false
  won?(board).each do|i|
    return board[i]
  end
end
end
