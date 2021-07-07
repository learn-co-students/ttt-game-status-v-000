# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Left start diagonal
  [2,4,6]  #Right start diagonal
]

def won?(board)
  winner = nil
  WIN_COMBINATIONS.each do |wincomb|
     if  wincomb.all? {|index| board[index] == "X"} ||
         wincomb.all? {|index| board[index] == "O"}
           winner = wincomb
     end
  end
  return winner
end

def full?(board)
  !board.any? { |x| x == " " }
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if won?(board) != nil
    index = won?(board)
    index = index[0]
    return board[index]
  else
    return nil
  end
end
