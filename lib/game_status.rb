# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top Row
  [3,4,5], # Middle Row
  [6,7,8], # Bottom Row
  [0,3,6], # First Column
  [1,4,7], # Middle Column
  [2,5,8], # Last Column
  [0,4,8], # L to R Diagonal
  [2,4,6] # R to L Diagonal
]

def won?(board)
  WIN_COMBINATIONS.each {|win_combo|
    win_index_1 = win_combo[0]
    win_index_2 = win_combo[1]
    win_index_3 = win_combo[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == 'X' && position_2 == 'X' && position_3 == 'X'
      return win_combo
    elsif position_1 == 'O' && position_2 == 'O' && position_3 == 'O'
      return win_combo
    end
  }
  return false
end

def full?(board)
  board.none? {|index| index == " "}
end

def draw?(board)
  if !won?(board) && full?(board)
    return true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  end
end

def winner(board)
  winning_combo = won?(board)
  if winning_combo == false
    return nil
  else
    if board[winning_combo[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end
