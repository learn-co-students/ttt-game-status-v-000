# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def empty_board?(board)
  board.all? do |position|
  position == nil || position == "" || position == " "
 end
end

def full_board?(board)
  board.all? do |position|
    position != nil || position != "" || position != " "
  end
end

def draw?(board)
  if full_board?(board) == true
    return true
  end
end

def top_board_win?(board)
  if board[0] == "X" &&  board[1] == "X" && board[2] == "X"
    return true
   elsif board[0] == "O" &&  board[1] == "O" && board[2] == "O"
     return true
  end
end
 
def 
# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,4,8], # Diagonal A
  [2,4,6], # Diagonal B
  [0,3,6], # Left column
  [1,4,7], # Middle column
  [2,5,8] # Right column
]
 
# for each win_combination in WIN_COMBINATIONS
  # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.
  # win_index_1 = WIN_COMBINATIONS[0]
  # win_index_2 = win_combinations[1]
  # win_index_3 = win_combinations[2]
  # win_index_4 = win_combinations[3]
  # win_index_5 = win_combinations[4]
  # win_index_6 = win_combinations[5]
  # win_index_7 = win_combinations[6]
  # win_index_8 = win_combinations[7]
  # win_index_9 = win_combinations[8]
  

  # position_1 = board[win_index_1] # load the value of the board at win_index_1
  # position_2 = board[win_index_2] # load the value of the board at win_index_2
  # position_3 = board[win_index_3] # load the value of the board at win_index_3
  # position_4 = board[win_index_4] # load the value of the board at win_index_4
  # position_5 = board[win_index_5] # load the value of the board at win_index_5
  # position_6 = board[win_index_6] # load the value of the board at win_index_6
  # position_7 = board[win_index_7] # load the value of the board at win_index_7
  # position_8 = board[win_index_8] # load the value of the board at win_index_8
  # position_9 = board[win_index_9] # load the value of the board at win_index_9

def won?(board)
  if empty_board?(board) == true
    return false
  elsif draw?(board) == true
    false
  elsif top_board_win?(board) == true
    return WIN_COMBINATIONS[0]
 end
end
 
 
 
  # if position_1 == "X" && position_2 == "X" && position_3 == "X"
  #   true
  # elsif position_7 == "X" && position_2 == "X" && position_3 == "X"
  #   false
  # end

#end