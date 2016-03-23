# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define my WIN_COMBINATIONS constant (differs from a variable in that it is unlikely to change - starts with a capital letter)
board = ["O", "O", "O", "O", "X", "O", "O", "O", "X"]
WIN_COMBINATIONS = [
  [0, 1, 2], #top row win
  [3, 4, 5], #middle row win
  [6, 7, 8], #bottom row win
  [0, 4, 8], #diagonal win
  [2, 4, 6], #diagonal win
  [0, 3, 6], #left column win
  [1, 4, 7], #middle column win
  [2, 5, 8]  #right column win 
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination| #iterates over the 8 arrays in win combinations

  win_index_1 = win_combination[0] #assigns each element in the win combination to a variable
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1] #assigns each previous variable to a specific location on the board array for comparison
  position_2 = board[win_index_2]
  position_3 = board[win_index_3]

  if ((position_1 == "X") && (position_2 == "X") && (position_3 == "X")) || ((position_1 == "O") && (position_2 == "O") && (position_3 == "O"))
    return [win_index_1, win_index_2, win_index_3]
  end
  end
return false
end

def full?(board)
#should return true if board is full
  board.all? do |position|  #all? iterator checks all elements in array to see if all return true
    if (position == "X") || (position == "O")
      true
    else
      false
    end
  end
end

def draw?(board)
#should return true if the board has not been won and is full and vice-versa, should return false if board is won
  if (full?(board) == true) && (won?(board) == false) #must use 'false' wrt to won?(board) as it spits out an array when it is true
    true
  elsif (won?(board) != false)
    false
  else
    false
  end
end

def over?(board)
#returns true if game is over (draw / win)
  if (won?(board) != false) || (draw?(board) == true)
    true
  else
    false
  end
end

def winner(board)
#should return X or O as winner
  if (won?(board) != false) #if there is a winner
    character = won?(board)[0] #assigns 'character' variable to first element of winning array
    winner = board[character] #assigns 'winner' variable to the same position on the actual board
    if winner == "X"
      return "X"
    elsif winner == "O"
      return "O"
    else
      nil
    end
  end
end
    