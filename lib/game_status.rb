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
  [2,4,6]
]

def won?(board)
  x_pos = board.each_index.select{|x| board[x]=="X"}
  o_pos = board.each_index.select{|o| board[o]=="O"}
  combo = WIN_COMBINATIONS.select do |win|
    win.all?{|i| x_pos.include? i} || win.all?{|i| o_pos.include? i}
  end
  !combo.empty? ? combo[0] : false
end

def full?(board)
  board.all?{|element| ["X","O"].include? element}
end

def draw?(board)
  !won?(board) && full?(board) ? true : false
end

def over?(board)
  won?(board) || full?(board) || draw?(board) ? true : false
end

def winner(board)
  return nil if !combo = won?(board)
  x_pos = board.each_index.select{|x| board[x]=="X"}
  o_pos = board.each_index.select{|o| board[o]=="O"}
  if    combo.all?{|i| x_pos.include? i} then "X"
  elsif combo.all?{|i| o_pos.include? i} then "O"
  else  nil
  end
end