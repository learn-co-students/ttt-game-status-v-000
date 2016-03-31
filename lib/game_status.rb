# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# board = ["X", "O", "X", "X", "X", "X", "O", "O", "O"]

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
  if !board.include?("X") and !board.include?("O") 
    false
  else
    WIN_COMBINATIONS.each do |combo|
      moves = [board[combo[0]], board[combo[1]], board[combo[2]]]
      moves.each do |move|
        if moves.all?{|move| moves[0] == move} and moves.all?{|move| move == "X" or move == "O"}
          return combo
        end
      end
    end
  end
  #couldn't find anything
  false
end

def full?(board)
  board.all?{|item| item == "X" or item == "O"}
end

def draw?(board)
  full?(board) and !won?(board)
end

def over?(board)
  full?(board)
end

def winner(board)
  winning_moves = won?(board)
  winning_moves ?  board[winning_moves[0]] :nil 
end
