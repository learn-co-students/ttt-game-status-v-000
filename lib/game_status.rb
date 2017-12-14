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
  [6, 4, 2],
]

  def won? (board)
    WIN_COMBINATIONS.detect do |win_combination|
      win_combination.detect do |win_index|
        win_index_1 = win_combination[0]
        win_index_2 = win_combination[1]
        win_index_3 = win_combination[2]
       board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X" || board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
      end
    end
  end


def full? (board)
  board.all? {|position| position == "X" || position == "O"}
end

def draw? (board)
  if won?(board) == nil && full?(board) == true
    return true
  elsif won?(board) == false && full?(board) == false
    return false
  else won?(board) == true
    return false
  end
end

def over?(board)
   won?(board) || full?(board)
end

def winner(board)
  if winning_index = won?(board)
    board[winning_index.first]
  end
end
