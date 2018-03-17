# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

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
    someone_won = WIN_COMBINATIONS.any? { |combination|
  combination.all? { |i| board[i] == "X" } || combination.all?{ |i| board[i] == "O"}
  }

  if someone_won
    how_they_won = WIN_COMBINATIONS.each {|combination|
      if combination.all? { |i| board[i] == "X" } || combination.all?{ |i| board[i] == "O"}
        return combination
      end
    }
  end
end

def full?(board)
  board.all? {|i| i == "X" || i == "O"}
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  won?(board) || draw?(board) || full?(board)
end

def winner(board)
  winning_combination = won?(board)
  if winning_combination
    return board[winning_combination[0]]
  end
end
