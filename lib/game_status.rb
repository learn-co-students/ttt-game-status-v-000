# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], #top row
  [3,4,5], #middle row
  [6,7,8], #bottom row
  [0,3,6], #left column
  [1,4,7], #middle column
  [2,5,8], #right column
  [0,4,8], #back diagonal
  [2,4,6]  #forward diagonal
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    first_position  = combo[0]
    second_position = combo[1]
    third_position  = combo[2]
    
    first = board[first_position]
    second = board[second_position]
    third = board[third_position]
    
    if first == "X" && second == "X" && third == "X"
      true
    elsif first == "O" && second == "O" && third == "O"
      true
    else
      false
    end
  end
end

def full?(board)
  board.all? do |position|
    if(position == "X" || position == "O")
       true
    else 
       false
    end
  end
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else
    false
  end
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else 
    false
  end
end

def winner(board)
  winning_combo = won?(board)
  if winning_combo.class != Array
    nil
  else
    winning_index = winning_combo[0]
    winning_token = board[winning_index]
  end
end