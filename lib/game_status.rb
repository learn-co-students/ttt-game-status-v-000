# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Center column
  [2,5,8], #Right column
  [0,4,8], #Top-left to bottom-right
  [2,4,6] #Top-right to bottom-left
]

def won?(board)
  winning_combination = []
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]

    if (board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X") ||
      (board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O")
      winning_combination = win_combination
    end
  end
  if winning_combination == []
    false
  else
    winning_combination
  end
end

def full?(board)
  board.all? do |position|
  position != " "
  end
end

def draw?(board)
  if won?(board) == false && full?(board) == true
    true
  else
    false
  end
end

def over?(board)
  if won?(board) != false || full?(board) == true || draw?(board) == true
    true
  else
    false
  end
end

def winner(board)
  if won?(board) != false
    token = won?(board)[0]
    board[token]
  else
    nil
  end
end
