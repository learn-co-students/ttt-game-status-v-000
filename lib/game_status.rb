# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], [3, 4, 5],
  [6, 7, 8], [0, 3, 6],
  [1, 4, 7], [2, 5, 8],
  [0, 4, 8], [2, 4, 6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    tokens = []
    win_combination.each do |pos|
      tokens << board[pos]
    end
    if (tokens.all?{|t| t == "X"} || tokens.all?{|t| t == "O"})
      return win_combination
    else
      false
    end
  end
  false
end

def full?(board)
  !(board.include?(" "))
end

def draw?(board)
  if(!(won?(board)) && full?(board))
    true
  else
    false
  end
end

def over?(board)
  if(draw?(board) || won?(board))
    true
  else
    false
  end
end

def winner(board)
  winner = won?(board)
  winner == false ? nil : board[winner[0]]
end