# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2], # Top row
[3,4,5], #Middle row
[6,7,8], #bottom row
[0,4,8], #diagonal
[2,4,6], #diagonal
[1,4,7], #middle-down
[0,3,6], #left-down
[2,5,8] #right-down
]

def won?(board)

  if board == [" ", " ", " ", " ", " ", " ", " ", " ", " "] 
    false
  else
 WIN_COMBINATIONS.each do |win|
  character = [board[win[0]], board[win[1]], board[win[2]]]

  if character.all? { |player| player=="X"} || character.all? { |player| player == "O"}
    return win
  else
    false
  end
end
end
false
end

def full?(board)
  board.all? {|x| 
    if x == "" || x == " " || x == nil
      false
    elsif x == "X" || x == "O"
      true
    end
  }
end

def draw?(board) 
  if won?(board) == false && full?(board) == true
    true
  elsif won?(board) == false && full?(board) == false
    false
  elsif won?(board) == true
    false
  end
end

def over?(board)
  if won?(board) == true || draw?(board) == true || full?(board) == true
    true
  else
    false
  end
end

def winner(board) 
  if won?(board) == false
    return nil
  end

  WIN_COMBINATIONS.each do |win|
  character = [board[win[0]], board[win[1]], board[win[2]]]

  if character.all? { |player| player == "X"}
    return "X"
  elsif character.all? { |player| player == "O"}
    return "O"
end
end
end
    








