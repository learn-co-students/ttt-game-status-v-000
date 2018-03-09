require 'pry'

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

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
    
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      winner = "X"
      return win_combination
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      winner = "O"
      return win_combination
    end
  end
  false
end

def full?(board)
  if board.count("X") + board.count("O") == 9
    true
  end
end

def draw?(board)
  if (won?(board) == false || nil) && full?(board) == true
    # full?(board) && !won?(board)
    true
  end
end

def over?(board)
  draw?(board) || won?(board)
end

#def first_winning_space(board)
#  if won?(board) == true
#    WIN_COMBINATIONS.find do |win_combination|
#    win_index_1 = win_combination[0]
#    position_1 = board[win_index_1]
#    if position_1 == "X"
#      return "X"
#    elsif position_1 == "O"
#      return "O"
#    end
#  end
#end

def winner(board)
  win_combination = won?(board)
  board[win_combination[0]] if win_combination
end

#binding.pry
