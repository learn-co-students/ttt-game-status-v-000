# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1= win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    if position_taken?(board, win_index_1) && position_taken?(board, win_index_2) && position_taken?(board, win_index_3)
      position_1 = board[win_index_1]
      position_2 = board[win_index_2]
      position_3 = board[win_index_3]

      if position_1 == position_2 && position_2 == position_3
       return win_combination
      end
    else
      false
    end
  end
  false
end

def full?(board)
  board.all? do |i|
    i == "X" || i == "O"
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  # elsif !full?(board) && !won?(board)
  #   false
  else
    false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    winning_array = won?(board)
    winning_index = winning_array[0]
    return board[winning_index]
  end
end
