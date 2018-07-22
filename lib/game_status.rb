# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
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
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1  = win_combination[0]
    win_index_2  = win_combination[1]
    win_index_3  = win_combination[2]

    if (position_taken?(board, win_index_1) && position_taken?(board, win_index_2) && position_taken?(board, win_index_3))
      if board[win_index_1] == board[win_index_2] && board[win_index_2] == board[win_index_3]
        return win_combination
      end
    end
  end
  return false
end

def full?(board)
  board.all? {|board_space| position_taken?(board, board.index(board_space))}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  elsif (!won?(board) && !full?(board) || won?(board))
    return false
  end
end

def over?(board)
  won?(board) || draw?(board) ? true : false
end

def winner(board)
  win_combination = won?(board)
  win_combination.class == Array ? board[win_combination[0]] : nil
end
