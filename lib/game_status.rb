
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
]

top_row= WIN_COMBINATIONS[0]
middle_row = WIN_COMBINATIONS[1]
bottom_row = WIN_COMBINATIONS[2]
left_col = WIN_COMBINATIONS[3]
middle_col = WIN_COMBINATIONS[4]
right_col = WIN_COMBINATIONS[5]
right_diag = WIN_COMBINATIONS[6]
left_diag = WIN_COMBINATIONS[7]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
     win_index_1 = win_combination[0]
     win_index_2 = win_combination[1]
     win_index_3 = win_combination[2]
     if board[win_index_1] ==  "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
       return win_combination
     elsif board[win_index_1] ==  "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
       return win_combination
     end
  end
  false
end

def full?(board)
  board.each do |index|
    if index == " " || index == ""
      return false
    end
  end
  board.detect do |i|
    if i == "X" || i == "O"
      true
    end
  end
end

def draw?(board)
  board.each do |i|
    if i == "X" || i == "O"
      true
    end
  end
  WIN_COMBINATIONS.each do |win_combination|
     win_index_1 = win_combination[0]
     win_index_2 = win_combination[1]
     win_index_3 = win_combination[2]
     if board[win_index_1] ==  "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
       return false
     elsif board[win_index_1] ==  "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
       return false
     end
   end
 end

 def over?(board)
   board.each do |i|
     if i == "X" || i == "O"
       true
     end
   end
   WIN_COMBINATIONS.each do |win_combination|
     win_index_1 = win_combination[0]
     win_index_2 = win_combination[1]
     win_index_3 = win_combination[2]
     if board[win_index_1] ==  "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
       true
     elsif board[win_index_1] ==  "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
       true
     end
   end
   board.each do |index|
     if index == " " || index == ""
       return false
     end
   end
 end

def winner(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    if board[win_index_1] ==  "X" && board[win_index_2] == "X" && board[win_index_3] == "X"
      return "X"
    elsif board[win_index_1] ==  "O" && board[win_index_2] == "O" && board[win_index_3] == "O"
      return "O"
    end
  end
  return nil
end
