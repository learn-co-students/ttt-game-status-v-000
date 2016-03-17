# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0, 4, 8], [2, 4, 6]]

def won?(board)
  wincomb = []
  WIN_COMBINATIONS.each do |comb|
    (board[comb[0]] == "X" && board[comb[1]] == "X" && board[comb[2]] == "X") || (board[comb[0]] == "O" && board[comb[1]] == "O" && board[comb[2]] == "O") ?
    wincomb.push(true) : wincomb.push(false)
  end
  if wincomb.include?(true)
    WIN_COMBINATIONS[wincomb.index(true)]
  else
    false
  end
end

def full?(board)
  board.count("X") + board.count("O") == 9 ?
  true : false
end

def draw?(board)
  if won?(board) 
    false
  elsif !full?(board)
    false
  else
    true
  end
end

def over?(board)
  if draw?(board) || won?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
    loc = won?(board)[0]
    return board[loc]
  else
    nil
  end
end


