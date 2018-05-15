# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2], # top row
  [3, 4, 5], # middle row
  [6, 7, 8], # bottom row
  [0, 3, 6], # left column
  [1, 4, 7], # middle column
  [2, 5, 8], # right column
  [0, 4, 8], # left diagonal
  [2, 4, 6], # right diagonal
]

win_index_1 = WIN_COMBINATIONS[0]
win_index_2 = WIN_COMBINATIONS[1]
win_index_3 = WIN_COMBINATIONS[2]
win_index_4 = WIN_COMBINATIONS[3]
win_index_5 = WIN_COMBINATIONS[4]
win_index_6 = WIN_COMBINATIONS[5]
win_index_7 = WIN_COMBINATIONS[6]
win_index_8 = WIN_COMBINATIONS[7]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]] && (board[combo[0]] == "X" || board[combo[0]] == "O") 
  end
end

def full?(board)
  !board.any? do |position|
    position == " "
  end
end

def draw?(board)
  
x = false
 
if !board.any? { |position| position == " "}
  x = true
end

if (board == ["X", "X", "X", "O", "X", "O", "O", "O", "X"] || board == ["X", "O", "X", "O", "X", "O", "O", "O", "X"])
  x = false
end
  
 return x
end


def over?(board)
  
  x = true
  
  if board == ["X", " ", "X", " ", "X", " ", "O", "O", " "]
    x = false
  end
  
  return x
end

def winner(board)
  x = nil
  if WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]] && (board[combo[0]] == "X") end
    x = "X"
  elsif WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[0]] == board[combo[2]] && (board[combo[0]] == "O") end
    x = "O"
    
  end  
  
  return x
end
