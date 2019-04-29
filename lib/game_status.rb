# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
# define a constant by starting the variable definition with a
# capital letter.

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

#Check board and return true if there is a win and false if not.

def won?(board)
  
  WIN_COMBINATIONS.each {   |win_combo|
  
    index_0 = win_combo[0]
    index_1 = win_combo[1]
    index_2 = win_combo[2]

    position_1 = board[index_0]
    position_2 = board[index_1]
    position_3 = board[index_2]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    end
  }
  return false
end

# return true if every element in the board contains either
# an "X" or an "O

def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

# returns true if the board has not been won and is full 
# and false if the board is not won and the board is not
# full, and false if the board is won

def draw?(board)
  
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

# returns true if the board has been won, is a draw, 
# or is full.

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

# return the token, "X" or "O" that has won the game 
# given a winning board. Use the methods and their return values defined above.

def winner (board)
  index = []
  index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end