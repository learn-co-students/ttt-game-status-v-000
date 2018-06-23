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

#def won?(board)
#WIN_COMBINATIONS.each do |win_set|
#if win_set.all? {|win_position| board[win_position] == "X" || board[win_position] == "O"}
#return true

def won?(board)
  WIN_COMBINATIONS.each do |win_set|
    if win_set.all? {|w| board[w] == "X"} || win_set.all? {|w| board[w] == "O"}
      return win_set
    elsif board.all? {|w| w == " "} || board.all? {|w| w == ""}
      false
    end
  end
  false
end
#else
#win_set.each do |win_position|
#    if board[w] != "X" || board[w] != "O"
#      return false
#    elsif win_position[0] = 0 && win_position[1] = 1 && win_position[2] = 2
#  end
#    end
#end
#end
#end
