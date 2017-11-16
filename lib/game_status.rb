# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],  # top row
  [3,4,5],  # middle row
  [6,7,8],  # bottom row
  [0,3,6],  # left column
  [1,4,7],  # middle column
  [2,5,8],  # right column
  [0,4,8],  #left diagonal
  [2,4,6]   #right diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    player = board[win_index_1]

    if position_taken?(board, win_index_1)
      win_found = win_combination.all? do |win_index|
        board[win_index] == player
      end

      if win_found
        return win_combination
      end
    end
  end

  return nil
end


def full?(board)
  not_full = board.any? do |player|
    player == nil || player == " "
  end

  return not_full ? false : true
end


def draw?(board)
  return (!won?(board) && full?(board))
end


def over?(board)
  return (won?(board) || draw?(board) || full?(board))
end


def winner(board)
  return won?(board) ? board[won?(board)[0]] : nil
end
