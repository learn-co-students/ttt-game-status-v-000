# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]]
  
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
   if win_combination.all? {|location| board[location] == "X" || win_combination.all? {|location| board[location] == "O"}}
    return win_combination
    end
  end
  if board.empty? == true
    return false
  end
  if board.all? {|spot| spot == "X" || spot == "O"}
    return false
  end
end

def full?(board)
  if board.include?(' ') || board.include?('')
    return false
else
    return true
  end
end

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
  WIN_COMBINATIONS.each do |win_combination|
    if win_combination.all? {|location| board[location] == "X"}
      return "X"
    elsif win_combination.all? {|location| board[location] == "O"}
      return "O"
    end
  end
  if won?(board) == false
      return nil
  end
end