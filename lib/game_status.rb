# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
      [0,1,2], [3,4,5], [6,7,8],
      [0,3,6], [1,4,7], [2,5,8],
      [0,4,8], [2,4,6]
]

def won?(board)
  won = false 
  WIN_COMBINATIONS.each do |combo|
    i0 = board[combo[0]]
    i1 = board[combo[1]]
    i2 = board[combo[2]]
    if (i0=="X" || i0=="O") && i0==i1 && i0==i2
      return combo
    end
  end
  won
end

def full?(board)
  board.all? {|i| !(i.nil? || i == " ")}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  winner = won?(board)
  if winner 
    return board[winner[0]]
  else 
    return nil
  end
end