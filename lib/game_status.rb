# Helper Method
def position_taken?(board, location)  # returns true if taken, false if not
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row
  [3,4,5], # middle row
  [6,7,8], # bottom row
  [0,3,6], # first column
  [1,4,7], # second column
  [2,5,8], # third column
  [0,4,8], # right to left diagonal
  [2,4,6], # left to right diagonal
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    location1 = win_combo[0]
    location2 = win_combo[1]
    location3 = win_combo[2]
    
    board[location1] == board[location2] && board[location2] == board[location3] && board[location1] != " "
  end
end


=begin
def won?(board)
  if board.all? {|position| position == "X" || position == "O"}
  elsif 
    WIN_COMBINATIONS.each do |win_combination|

      pos_one = win_combo[0]
      pos_two = win_combo[1]
      pos_three = win_combo[2]
      
      if (board[pos_one] == "X" && board[pos_two] == "X" && board[pos_three] == "X") || (board[pos_one] == "O" && board[pos_two] == "O" && board[pos_three] == "O")
        return win_combo  
      end
    end
  else
    return false 
  end
end
=end


def full?(board)
  board.none? {|location| location == " "}
end

def draw?(board)
  full?(board) && !won?(board)  
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  winning_combo = won?(board)
  if winning_combo
    winning_location = winning_combo[0]
    board[winning_location]
  end
end





=begin
def won?(board)
  game_won = false
  if (board.any? {|position| position == "X" || position == "O"})

  WIN_COMBINATIONS.each do |win_combo|

    pos_one = board[win_combo[0]].value
    pos_two = board[win_combo[1]].value
    pos_three = board[win_combo[2]].value
    winning = [pos_one, pos_two, pos_three]
    
    if (board[pos_one] == "X" && board[pos_two] == "X" && board[pos_three] == "X") || (board[pos_one] == "O" && board[pos_two] == "O" && board[pos_three] == "O")
      game_won = true
      return winning
    elsif 
      full?(board)
      return false
    end
end
  end
end

  #end
=end




