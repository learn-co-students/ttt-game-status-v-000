# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], #Top Row
  [3,4,5], #Middle Row
  [6,7,8], #Bottom Row
  [0,4,8], #Diagonal Right
  [2,4,6], #Diagonal Left
  [0,3,6], #Left Column
  [1,4,7], #Middle Column
  [2,5,8]  #Right Column
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
      position_1 = board[combo[0]] # load the value of the board at win_index_1
      position_2 = board[combo[1]] # load the value of the board at win_index_2
      position_3 = board[combo[2]] # load the value of the board at win_index_3
      position_1 == position_2 && position_2 == position_3 && position_taken?(board, combo[0])
  end
end

def full?(board)
  board.all? {|element| element == "X" || element == "O"}
end

def draw?(board)
  !won?(board) && full?(board)
end

def over?(board)
  won?(board) || draw?(board)
end

def winner(board)
  board[won?(board)[0]] if won?(board)
end
