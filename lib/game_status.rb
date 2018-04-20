# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
    [0, 1, 2], # top row
    [3, 4, 5], # middle row
    [6, 7, 8], # bottom row
    [0, 4, 8], # diagonal left to right
    [2, 4, 6], # diagonal right to left
    [0, 3, 6], # left column
    [1, 4, 7], # center column
    [2, 5, 8] # right column
  ]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
   win_index_1 = win_combination[0]
   win_index_2 = win_combination[1]
   win_index_3 = win_combination[2]
   position_1 = board[win_index_1]
   position_2 = board[win_index_2]
   position_3 = board[win_index_3]
     if position_1 == "X" && position_2 == "X" && position_3 == "X"
       return win_combination
     elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
       return win_combination
     else
       false
     end
   end
   return false
end

def full?(board)
  counter = 0
  board.each do |move|
    if move == "X" || move == "O"
      counter += 1
    else
      false
    end
  end
  if counter < 9
    return false
  else
    return true
  end
end

def draw?(board)
  if full?(board) == true && won?(board) == false
    return true
  else
    return false
  end
end

def over?(board)
  if full?(board) == true || won?(board) != false || draw?(board) == true
    return true
  else
    false
  end
end

def winner(board)
  if won?(board) == false
    return nil
  elsif board[won?(board)[0]] == "X"
    return "X"
  elsif board[won?(board)[0]] == "O"
    return "O"
  end
end
