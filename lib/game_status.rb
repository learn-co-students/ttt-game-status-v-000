# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,4,8], #Left diag
  [2,4,6], #right diag
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8] #right column
]
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if ((position_1 == "X" && position_2 == "X" && position_3 == "X") || (position_1 == "O" && position_2 == "O" && position_3 == "O"))
      return win_combination
    end
  end
  return false
end

def full?(board)
  board.all?{|player| player == "X" || player == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end

def winner(board)
  if (won?(board))
    win_index = won?(board)[0]
    return board[win_index]
  end
end
