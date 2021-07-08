# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    # puts "win_combination is #{win_combination}"
    win_check = [board[win_combination[0]], board[win_combination[1]], board[win_combination[2]]]
    # puts "win_check is #{win_check}"
    if win_check.all? {|player| player == 'O'} then
        # puts "evaluated true; winner O"
        win_player = "O"
        return win_combination
    elsif win_check.all? {|player| player == 'X'} then
        # puts "evaluated true; winner X"
        win_player = "X"
        return win_combination
    else
        # puts "evaluated false"
    end
  end
  return false
end

def winner(board)
  win_combination = won?(board)
  if won?(board) then
    return board[win_combination[0]]
  else
    return nil
  end
end

def over?(board)
  if ((full?(board) != false) || (won?(board)) || (draw?(board))) then
    return true
  else
    return false
  end
end

def full?(board)
  if board.include?(" ") then
    return false
  else
    return true
  end
end

def draw?(board)
  if ((won?(board) == false) && (full?(board))) then
    return true
  else
    return false
  end
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8],  # Bottom row
  [0,3,6], # left column
  [1,4,7], # middle column
  [2,5,8], # right column
  [0,4,8],
  [2,4,6]
]
