# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6] # Middle row
]
def won?(board)
  WIN_COMBINATIONS.detect do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination # return the win_combination indexes that won.
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combination
    else
      false
    end
  end
  end

def full?(board)
  board.none? do |index|
    index == " "
end
end

def draw?(board)
  if full?(board) == true && won?(board) == nil
    true
  elsif won?(board) == false && full?(board) == nil
      false
  elsif won?(board) != nil
    false
  end
end

def over?(board)
  if won?(board) != nil
    true
  elsif full?(board) != true
    false
  elsif draw?(board) == true
    true
  end
end

def winner(board)
  if won?(board) != nil
    win = won?(board)
    board[win[0]]
  end
end
