# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
  return false if (0..8).none?{ |i| position_taken?(board, i.to_i) }
  
  
  WIN_COMBINATIONS.each do |i|
    win_index_1 = i[0].to_i
    win_index_2 = i[1].to_i
    win_index_3 = i[2].to_i
    position_1  = board[win_index_1]
    position_2  = board[win_index_2]
    position_3  = board[win_index_3]
    
    return i if position_1 == 'X' && position_2 == 'X' && position_3 == 'X'
    return i if position_1 == 'O' && position_2 == 'O' && position_3 == 'O'
  end
  false
end

def full?(board)
  board.all?{|i| i == 'X' || i == 'O' }
end

def draw?(board)
  return true if full?(board) && won?(board) == false
  return false if won?(board).is_a?(Array)
  return false if won?(board).is_a?(Array)  && full?(board) == false
end

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    return true
  else
    return false
  end
end

def winner(board)
  winner = won?(board)
  return board[winner[0]] if winner.is_a?(Array)
end

board = ["X", "X", "X", "O", "X", "O", "O", "O", "X"]
# puts full?(board)
# puts won?(board)
# puts draw?(board)
puts winner(board)
