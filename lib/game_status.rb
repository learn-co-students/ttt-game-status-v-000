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
  [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    pos_1=combo[0]
    pos_2=combo[1]
    pos_3=combo[2]
    if board[pos_1] == board[pos_2] && board[pos_2] == board[pos_3] && board[pos_1] != " "
      return combo
    end
  end
  return false
end

def full?(board)
  board.none?{|i| i==" "}
end

def draw?(board)
  if full?(board) && !won?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if draw?(board) || won?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board)
    combo = won?(board)
    print combo
    puts
    winner = board[combo[0]]
    puts winner
    return winner
  else
    puts "Whatevs"
    return nil
  end
end

board = ["X", "O", " ", " ", "O", " ", " ", "O", "X"]
winner(board)
