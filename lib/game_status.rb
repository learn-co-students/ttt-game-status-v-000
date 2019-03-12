# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
[0,1,2], # Top row
[3,4,5],  # Middle row
[6,7,8], #lower row
[0,4,8], #horizontal row_a
[2,4,6], #horizontal_row_b
[1,4,7], #vertical_row_a
[0,3,6], #vertical_row_b
[2,5,8], #vertical_row_c
]

def won?(board)
WIN_COMBINATIONS.each do |combo|
 # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
 # grab each index from the win_combination that composes a win.
win_index_1 = combo[0]
win_index_2 = combo[1]
win_index_3 = combo[2]


 position_1 = board[win_index_1] # load the value of the board at win_index_1
 position_2 = board[win_index_2]
 position_3 = board[win_index_3]

 if
   (position_1 == "X" && position_2 == "X" && position_3 == "X") ||(position_1 == "O" && position_2 == "O" && position_3 == "O")

   return combo

 end #end if
end #end to looping
return false
end #end def


def full?(board)
  if board.include?(' ') || board.include?('')
    return false
else
    return true
  end
end

#IS THERE A DRAW?
def draw?(board)
  if !won?(board) && full?(board)
    return true
  end
end

def over?(board)
 puts 'is it over?'
 if won?(board) || draw?(board) || full?(board)
   return true
 else
   puts 'no keep going'
   return false
 end
end

def winner(board)
if won?(board)
  return combo[0]
end
end
