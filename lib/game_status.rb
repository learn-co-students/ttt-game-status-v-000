#


# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], #right column
  [0,4,8], # diag_1
  [2,4,6]  # diag_2
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3
      
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination # return the win_combination indexes that 'X' won.
      elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
        return win_combination # return the win_combination indexes that 'O' won.
      else 
        return_value = false
    end #if
   
  end #1st do
   if return_value = false
    return_value
  end
end # of won?


#------------------------------------------------------------
def full?(board)
board.all? {|i| i == "X" || i == "O"}
end # of full?
#------------------------------------------------------------

def draw?(board)
win_state = won?(board)
full_state = full?(board)

if !win_state && full_state # Test for a draw
    draw_state = true
  elsif win_state #= true) # test for a win
      draw_state = false
    elsif !win_state && !full_state # test for incomplete
        draw_state = false
end
draw_state
end # of draw?


#------------------------------------------------------------
def over?(board)
over_state = false

if draw?(board) 
    over_state = true
  elsif won?(board)
    over_state = true
    elsif full?(board)
      over_state = true
end
over_state
end #of over?
#------------------------------------------------------------
def winner(board)

if won?(board)
  win_array = won?(board)
  token = board[win_array[0]]
end

token
end # of winner?



#------------------------------------------------------------