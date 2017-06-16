require "pry"

board = [" ", " ", " ", " ", " ", " ", " ", " ", " ",]
# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2], # Top row win
  [3, 4, 5], # Middle row win
  [6, 7, 8], # Bottom row win
  [0, 3, 6], # First column win
  [1, 4, 7], # Middle column win
  [2, 5, 8], # Last column win
  [0, 4, 8], # Left diagonal win
  [2, 4, 6]  # Right diagonal win
]
#win_index_1 = win_combination[0]
#win_index_2 = win_combination[1]
#win_index_3 = win_combination[2]

#win_index_4 = win_combination[3]
#win_index_5 = win_combination[4]
#win_index_6 = win_combination[5]

#win_index_7 = win_combination[6]
#win_index_8 = win_combination[7]
#win_index_9 = win_combination[8]

#all_odd = [1,3].all? do |number|
#number.odd? # Will evaluate to true for 1, true for 3
#end #=> true
#all_odd #=> true

#[1,2,3,4,5].select{|i| i.odd?} #=> [1,3,5]

#[1,2].reject{|i| i.even?} #=> [1]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
    board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board, combo[0])

  end
end

full_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]
incomplete_board = ["X", " ", "X", "O", " ", "X", "O", " ", "O"]

def full?(full_board)
  full_board.all?{|cell| cell == "X" || "O"}
  full_board.none?{|cell| cell == " "}
end

draw_board = ["X", "O", "X", "O", "X", "X", "O", "X", "O"]

def draw?(draw_board)
  !won?(draw_board) && full?(draw_board)

end

def over?(draw_board)
  won?(draw_board) || full?(draw_board)

end

def winner(draw_board)
  if won?(draw_board)
    winning_combo = won?(draw_board)
    draw_board[winning_combo[0]]
  else
    nil
  end
end
