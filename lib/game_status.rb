# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], #Top row
  [3, 4, 5], #Middle row
  [6, 7, 8], #Bottom row
  [0, 3, 6], #Left down
  [1, 4, 7], #Center down
  [2, 5, 8], #Right down
  [0, 4, 8], #Diagonal down
  [2, 4, 6]  #Diagonal up
]


def won?(board)
  WIN_COMBINATIONS.each do |win|
    return win if win.all?{|y| board[y] == 'X'}
    return win if win.all?{|y| board[y] == 'O'}
  end
  false
end

def full?(board)
  board.none?{|y| y == "" || y == " "}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  full?(board) || won?(board)
end

def winner(board)
  result = won?(board)
  return board[result.first] if result
  return
end
