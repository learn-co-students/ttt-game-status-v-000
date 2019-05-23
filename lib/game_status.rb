# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], #bottom
  [0,3,6], #left
  [1,4,7], #Middle
  [2,5,8], #right
  [0,4,8], #left to right
  [2,4,6] #right to left
]

def won?(board)
WIN_COMBINATIONS.detect do |win_combination|
  # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.
  win_index_1 = win_combination[0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]

  position_1 = board[win_index_1] # load the value of the board at win_index_1
  position_2 = board[win_index_2] # load the value of the board at win_index_2
  position_3 = board[win_index_3] # load the value of the board at win_index_3
 if position_1 == "X" && position_2 == "X" && position_3 == "X"
   return win_combination
 elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
   return win_combination
else
  false
end
end
end

#full?
def full?(board)
  board.none? do |index|
  index == " "
end
end

#draw?
def draw?(board)
  if won?(board) == nil && full?(board) == true
    true
  elsif won?(board) == false && full?(board) == false
    false
  elsif won?(board) != false
    false
  end
end

#over?
def over?(board)
  if draw?(board) == true
    true
  elsif won?(board) != nil
    true
  elsif
    false
  end
end

#winner
def winner(board)
if won?(board) != nil
  win = won?(board)
  board[win[0]]
else
  nil
end
end
