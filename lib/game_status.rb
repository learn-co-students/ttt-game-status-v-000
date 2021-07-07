# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [2,5,8],
  [1,4,7]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_array|
    if win_array.all? { |win_index| position_taken?(board, win_index) }
      win_index_1 = win_array[0]
      win_index_2 = win_array[1]
      win_index_3 = win_array[2]

      if board[win_index_1] == board[win_index_2] && board[win_index_1] == board[win_index_3]
        return win_array
      else
      end
    end
  end
  return false
end

def full?(board)
  board.all?{|i| i=="X" || i=="O"}
end

def draw?(board)
  won?(board) == false && full?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo.first]
  end
end
