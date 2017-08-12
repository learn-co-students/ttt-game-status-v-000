# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [2,4,6],
  [0,3,6],
  [1,4,7],
  [2,5,8],
]

def won?(board)
  WIN_COMBINATIONS.find do |win_combination|
    win_combination.all?{|i| board[i] == "X"} || win_combination.all?{|i| board[i] == "O"}
  end
end

def full?(board)
  if board.any?{|i| i != "X" && i != "O"}
   false
  else board.all?{|i| i != " "}
    true
  end
end

def draw?(board)
  if !won?(board) && full?(board)
    true
  elsif won?(board) == false && full(board) == false
    false
  else
    false
  end
end

def over?(board)
   if won?(board) || draw?(board)
     true
   else
     false
   end
 end

def winner(board)
  if won?(board)
    return board[won?(board)[0]]
  end
end
