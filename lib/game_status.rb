# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [6,4,2],
  [8,4,0],
  [0,3,6],
  [1,4,7],
  [2,5,8]
]

def won?(board)
  WIN_COMBINATIONS.each do |win_combination| 
  # win_combination is a 3 element array of indexes that compose a win, [0,1,2]
  # grab each index from the win_combination that composes a win.
  win_index_1 = win_combination[0] #the values inside [] are all the values in WIN_COMBINATIONS that have the same place, so 
                                    # 0,3,6,6,8,0,1,2 = [0]
  win_index_2 = win_combination[1]
  win_index_3 = win_combination[2]
 
  position_1 = board[win_index_1]
  position_2 = board[win_index_2] 
  position_3 = board[win_index_3] 
 
  if position_1 == "X" && position_2 == "X" && position_3 == "X"
    return win_combination # return the win_combination indexes that won.
  elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
    return win_combination
  else
    false
  end 
end
  false #what does this correspond to?
end

# def full?(board)
#   #full_board = ["X", "X", "X", "O", "X", "O", "X", "O", "O"]
#   #in_progress_board = [" ", "X", "X", " ", "O", "O", "O", "X", " "]
#   full_board = false
#   board.each do |token|
#     if token == " "
#       full_board = false
#     #elsif in_progress_board = true
#   else
#     full_board = true
#     end
#   end
#   full_board
# end

def full?(board)
  board.all? do |token| 
    token == "X" || token == "O"
  end 
end

def draw?(board)
  if full?(board) && !won?(board)
    true
  else won?(board)
    false
  end
end 


# Build a method #over? that accepts a board and returns true if the board has been won, is a draw, or is full. You should be able to compose this method solely using the methods you used above with some ruby logic.

def over?(board)
  if won?(board)
    true
  elsif full?(board)
    true
  elsif !full?(board)
    false
  else draw?(board)
    true
  end
end

# def winner(board)
#   if  board[won?(board).first]
#   end
# end



def winner(board)
  if !won?(board) == false
    board[won?(board).first]
  end
end

# You're 99% there, but inside of having false in your if block you want board[won?(board).first] there
  
  
