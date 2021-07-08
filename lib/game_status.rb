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
  win = nil
  WIN_COMBINATIONS.each do | win_combination |
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
     if (board[win_index_1] == "X" && board[win_index_2] == "X" && board[win_index_3] == "X")
      win = win_combination
     elsif (board[win_index_1] == "O" && board[win_index_2] == "O" && board[win_index_3] == "O")
      win = win_combination
     else
      false
     end
   end
  win
end

def full?(board)
   if board.include?(" ")
    false
   else board.include?("X" || "O")
    true
   end
end

def draw?(board)
  if won?(board)
    false
  elsif !(full?(board)) && !(won?(board))
    false
  else full?(board) && !(won?(board))
    true
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end


def winner(board)
  winning_combo = won?(board)
  winning_combo ? board[winning_combo[0]] : nil
end
