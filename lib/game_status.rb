require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2], #Top row
  [3,4,5], #Middle row
  [6,7,8], #Bottom row
  [0,3,6], #Left column
  [1,4,7], #Middle column
  [2,5,8], #Right column
  [0,4,8], #Left start diagonal
  [2,4,6]  #Right start diagonal
]

def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    index_1 = win_combo[0]
    index_2 = win_combo[1]
    index_3 = win_combo[2]
    position_1 = board[index_1]
    position_2 = board[index_2]
    position_3 = board[index_3]
    position_1 == position_2 && position_2 == position_3 && position_1 != " "
  end
end 

def full?(board)
  !board.any? { |x| x == " " }
 end


def draw?(board)
  if full?(board) && !won?(board)
    return true 
  else
    return false 
  end
end

def over?(board)
  if full?(board) || won?(board) || draw?(board)
    puts "GAME OVER"
    return true
  else 
    puts "it ain't over till it's over baby!"
    return false 
  end 
end  

def winner(board)
  if winning_combo = won?(board)
    board[winning_combo[0]]
  end
end